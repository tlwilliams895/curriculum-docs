# Content

## Tables

<!--table-->

<!--endtable-->

## Aside Boxes

This page shows how to use the `<aside>` tag within your markdown to generate little labeled boxes for your Sphinx site. There are 5 built-in options, plus a "custom" option:

```eval_rst
==================  =================
CSS Class           Resulting Label
==================  =================
``.aside-note``     ✶ Note
``.aside-warning``  ⚠️ Warning
``.aside-hint``     🤔 Hint
``.aside-pro-tip``  🎻 Pro Tip
``.aside-example``  🔦 Example
``.aside-custom``   Whatever You Want
==================  =================
```

### Box Types

#### Note

Use `aside-note` when you want to acknowledge or call attention to something, but you don't want to break up the flow of your main thought(s). Finish the main flow of thought first, and then insert the note afterwards.

<aside class="aside-note">

If the image above fails to load, then [click here to see Daisy's mock-up](#).

</aside>

Markdown source:

```html
<aside class="aside-note">

If the image above fails to load, then [click here to see Daisy's mock-up](#).

</aside>
```

<aside class="aside-note">

Notice the blank lines separating the opening and closing `<aside>` tags from the content. These are necessary in order for the contents of the aside to be parsed as Markdown.

</aside>

#### Warning

Use `aside-warning` similarly to `aside-note`, but especially in situations where you want to prevent the reader from running into some trouble.

<aside class="aside-warning">

If you don't include an empty line between the HTML tags and the contents, you'll have undesirable results.

Even if there isn't any explicit Markdown within the aside, the contents will parsed differently and may result in not-so-great styling.

</aside>

Markdown source:

```html
<aside class="aside-warning">

If you don't include an empty line between the HTML tags and the contents, you'll have undesirable results.

Even if there isn't any explicit Markdown within the aside, the contents will parsed differently and may result in not-so-great styling.

</aside>
```

#### Hint

Use `aside-hint` to give a hint about how the student might approach a problem.

<aside class="aside-hint">

You will probably need to build up the string as you go, using the [accumulator pattern](#).

</aside>

Markdown source:

```html
<aside class="aside-hint">

You will probably need to build up the string as you go, using the [accumulator pattern](#).

</aside>
```

#### Pro tip

Use `aside-pro-tip` to introduce concepts, skills, or cute tricks that are nice-to-have, but not fully necessary, and can be safely ignored without compromising the student's core understanding.

<aside class="aside-pro-tip">

You can write that in one line using the *ternary* operator. Learn more [here](#).

</aside>

Markdown source:

```html
<aside class="aside-pro-tip">

You can write that in one line using the *ternary* operator. Learn more [here](#).

</aside>
```

#### Example

Use `aside-example` to give examples of concepts under discussion.

<aside class="aside-example">

The ternary operator in Javascript
```js
var value = inputVal != null ? inputVal : defaultVal;
```

</aside>

Markdown source:

~~~
<aside class="aside-example">

The ternary operator in Javascript
```js
var value = inputVal != null ? inputVal : defaultVal;
```

</aside>
~~~

#### Custom

If there is some specific label you need, then you can use the `aside-custom` class and set the `label` attribute accordingly.

<aside class="aside-custom" label="🌮 Tacos">

Party at Chris's place on Saturday. There will be tacos!

</aside>

```html
<aside class="aside-custom" label="🌮 Tacos">

Party at Chris's place on Saturday. There will be tacos!

</aside>
```

### Code Editor Snippets

It's very handy to set up a snippet in your code editor to allow for quick creation of aside boxes.

Both of the snippets below allow you to type "aside" followed by the Tab key to generate the following HTML, with `$n` as functional placeholders:

```html
<aside class="aside-$1">

$2

</aside>
```

Your cursor will be placed at the `$1` position, to easily complete the class with `note`, `warning`, etc. Hitting Tab again will place your cursor at the `$2` position to add content.

#### Visual Studio Code

In VS Code, navigate to *Code > Preferences > User Snippets* and search for `markdown.json` in the search box that pops up. Add the code below between the outer `{}` to create the snippet.

```js
"Create aside": {
    "prefix": "aside",
    "body": [
        "<aside class=\"aside-$1\">\n\n$2\n\n</aside>"
    ],
    "description": "Insert HTML for aside formatting in Couscous sites"
}
```

#### Atom

In Atom, navigate to *Atom > Snippets...* and add the following code to the bottom of the file.

```
'.text.md':
  'Couscous Aside':
    'prefix': 'aside'
    'body': '<aside class="aside-$1">\n\n$2\n\n</aside>'
```
