# Style Guide

This is a work-in-progress guide to writing and formatting content for LaunchCode education programs.

We identify three levels of current implementation for each category:

- *Strict*: Follow these guidelines at all times. If you find a violation of the guideline, fix it. Strict guidelines are generally widely-implemented.
- *Moderate*: Implemntation is more flexible -- more readily allowing for exceptions based on context -- and is generally less complete.
- *Aspirational*: Guidelines we aspire to implement more regularly. These are generally less impactful to the student, but are good for standardizing and maintaining a high level of quality.

This guide assumes that you are working with Markdown files. For the corresponding reST syntax, refer to the [reStructuredText Primer](http://www.sphinx-doc.org/en/stable/rest.html).

## Headings

Level: *Strict*

**Levels 1-2**: Use sentence case (all major words of the headline capitalized). For the definition of "major word" we defer to AP style:

> Capitalize the first word of every letter except articles, coordinating conjunctions, and prepositions of three letters or fewer. There’s one exception: Any word that is the first word in the headline or the last word should be capitalized, regardless of its part of speech.

**Levels 3+**: Capitalize only the first word.

**Code snippets**: Any words or characters that would otherwise be formatted using inline code formatting (e.g. backtics in markdown) should *not* have such formatting applied when part of a heading. Furthermore, the case of such words or characters should not be modified to match the capitalization rules above; they should remain the same case that they would be when used.

## Application and UI Labels

Level: *Moderate*

Format labels for applications menus and other UI components using italics.

<aside class="aside-example">

To open a file in Atom, use *File > Open*.

</aside>

## Code Segments

Level: *Strict*

### Fenced code blocks

For code segments more than two or three words long, or for those that warrant calling the user's attention to, use triple-backtics (`` ` ``) or triple-tildes (`~`) to create a fenced code block. Add the language in question just after the opening triple to enable syntax higlighting.

~~~md
```java
public static int counter;
```
~~~

<aside class="aside-note">

We prefer backtics over tildes, however tildes should be used when it is necessary to include triple-backtics within the block itself.

</aside>

Some common language identifiers supported by Pygments are: `java`, `python`, `csharp`, `html`, `css`, `js`, and `sql`. A [full list of supported languages](http://pygments.org/languages/) is available. To find the language identifier for a supported language, refer to the "Short name" property of the language's lexer from the [full list of Pygments lexers](http://pygments.org/docs/lexers/).

For terminal/shell commands, no language identifier is used:

~~~md
```
$ javac Hello.java
```
~~~

Shell commands displayed in block style should include a generic prompt: `\$`. Shell commands displayed inline (as below) should _not_ be prepended with `\$`.

### Inline code

For short segments, or individual code words, enclose in single backtics:

~~~md
The `static` keyword in Java is used to...
~~~

You should always encolse the following types of types of items in single backtics:

- Programming language keywords, symbols, and identifiers
- File and directory names
- URLs referenced literally (i.e. not linked)

For inline code that contains a backtic, use double backtics:

~~~md
There is a literal backtic here: ``(`)``
~~~

<aside class="aside-note">

One exception to this rule is when any of these elements appears in a heading. See the [Headings](#headings) section for details.

</aside>