// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require("jquery")
import "inline-attachment/src/inline-attachment";
import "inline-attachment/src/codemirror-4.inline-attachment";
import "./application.scss"
import 'simplemde/dist/simplemde.min.css'
import SimpleMDE from "simplemde";

Rails.start()
// Turbolinks.start()
ActiveStorage.start()

$(() => {
    const simplemde = new SimpleMDE({ element: document.getElementById("reminder_description") });

    inlineAttachment.editors.codemirror4.attach(simplemde.codemirror, {
        allowedTypes: ['image/jpeg', 'image/png', 'image/jpg', 'image/gif'],
        uploadUrl: '/reminders/attach',
        uploadMethod: 'POST',
        uploadFieldName: 'image',
        extraHeaders: { "X-CSRF-Token": Rails.csrfToken() }, //CSRF measures
    });

    $(".editor-toolbar").css('background-color', '#fff');
})
