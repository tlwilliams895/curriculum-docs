# Style Guide

This is a work-in-progress guide to writing and formatting content for LaunchCode education programs.

For general grammar, style, and punctuation guidelines not covered here, refer to the [Purdue Online Writing Lab (OWL)](https://owl.purdue.edu/owl/general_writing/index.html).

## Headings

For headings, use sentence case (all major words of the headline capitalized). For the definition of "major word" we defer to AP style:

> Capitalize the first word of every letter except articles, coordinating conjunctions, and prepositions of three letters or fewer. There’s one exception: Any word that is the first word in the headline or the last word should be capitalized, regardless of its part of speech.

Every page should begin with a level-1 heading, and heading levels should never be skipped. For example, do not use a level-3 heading below a level-1 heading without a level-2 heading in between.

Use headings to segment content by topic. _Do not_ use headings for emphasis.

Headings should also enable easy reference. When writing a heading, consider how well it describes the section's contents. If a reader saw the heading in a table of contents, would they have a general idea of what it contains?

## Quotes

Quotes have semantic meaning, and should therefore be used only in specific circumstances.

The most obvious usage is to include a verbatim statement by another person or entity. In the case of a rhetorical or hypothetical statement, use italics.

<aside class="aside-example">

Ryan said, "I used to think less was more, but now I'm thinking more is more!"

You might be thinking to yourself, *JavaScript sure is a crazy language!* And you'd be right.

</aside>

The only other proper use of quotes is to refer to a word as an object within a sentence.

<aside class="aside-example">

When it comes to words, "circumlocution" is one of the best.

</aside>

When using quotes in this way, all punctuation goes *outside* the quotes.

Finally, when writing curriculum you should *avoid using scare quotes.* Scare quotes are quotation marks used around a word or phrase intended to signal irony or derrision.

<aside class="aside-example">

The Internet is built on HTML, a "programming language" introduced in 1993.

</aside>

The use of scare quotes is overtly colloquial and can be confusing. If tempted to use scare quotes, rethink what you want to convey and find a way to do it without them. Not convinced? [Read a few reasons why scare quotes should be avoided.](https://www.dailywritingtips.com/3-erroneous-uses-of-scare-quotes/)

In all cases, use double quotes unless including a direct quotation that itself includes a quote.

## Formatting for Emphasis

To call attention to a sentence, phrase, or word within a paragraph, you may use italicized text.

<aside class="aside-example">

JavaScript *does not* allow you to specify the types of parameters, though the JavaScript extension TypeScript does.

</aside>

It is also acceptable to use all-caps to emphasize text. However, we prefer italics over all-caps in most situations, and all-caps should be avoided for phrases and sentences.

<aside class="aside-example">

JavaScript DOES NOT allow you to specify the types of parameters, though the JavaScript extension TypeScript does.

</aside>

Finally, italics and all-caps should *RARELY* be used to emphasize the same content.

## Formatting for Semantic Meaning

Formatting may convey additional information about a word or phrase. This is what we mean by "semantic meaning."

### Vocabulary Words

When an important term is first used and defined, format it in bold.

<aside class="aside-example">

A **function** is a callable, reusable piece of code.

</aside>

In the majority of cases, you will only bold a vocab word the first time it is used. On occassion, it may make sense to bold the word a second time, at a different location, if it is being reintroduced in a new way.

### Application and UI Labels

Format labels for application menus and other UI components using italics.

<aside class="aside-example">

To open a file in Atom, use *File > Open*.

</aside>

### Code Segments

<aside class="aside-note">

The following section uses Markdown syntax. The same principles apply for RST, but with the corresponding syntax. See the RST section below for info on how you should format code segments in RST.

</aside>

#### Fenced code blocks

For code segments more than two or three words long, or for those that warrant calling the user's attention to, use triple-backtics (`` ` ``) or triple-tildes (`~`) to create a fenced code block. Add the language in question just after the opening triple to enable syntax higlighting.

~~~md
```java
public static int counter;
```
~~~

<aside class="aside-note">

We prefer backtics over tildes; however, tildes should be used when it is necessary to include triple-backtics within the block itself.

</aside>

Some common language identifiers supported by Pygments are: `java`, `python`, `csharp`, `html`, `css`, `js`, and `sql`. A [full list of supported languages](http://pygments.org/languages/) is available. To find the language identifier for a supported language, refer to the "Short name" property of the language's lexer from the [full list of Pygments lexers](http://pygments.org/docs/lexers/).

For terminal/shell commands, no language identifier is used:

~~~md
```
$ javac Hello.java
```
~~~

Shell commands displayed in block style should include a generic prompt: `\$`. Shell commands displayed inline (as below) should _not_ be prepended with `\$`.

#### Inline code

For short segments, or individual code words, enclose in single backtics:

~~~md
The `static` keyword in Java is used to...
~~~

You should always enclose the following types of types of items in single backtics:

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

## Linking

When adding a link to a page, create a **semantic link** if at all possible. A semantic link is one in which the text content of the link describes the destination URL. In particular, links with text content that is the destination URL itself should be *avoided at all costs!*

Here is a semantic link:

<aside class="aside-example">

Read about <a href="https://education.launchcode.org/skills-back-end-java/java4python/data-types/">data types in Java</a>.

</aside>

Here is a non-semantic link:

<aside class="aside-example">

Read about data types in Java <a href="https://education.launchcode.org/skills-back-end-java/java4python/data-types/">here</a>.

</aside>

And this is about the worst thing you can do:

<aside class="aside-">

Read about data types in Java at <a href="https://education.launchcode.org/skills-back-end-java/java4python/data-types/">https://education.launchcode.org/skills-back-end-java/java4python/data-types/</a>.

</aside>

## RST Conventions

- For headings, the hierarchy of characters underlining text should be: `=` (level-1 headings), `-` (level-2 headings), `^` (level-3 headings).
- `.. sourcecode::` and `.. code-block::` are synonymous directives for creating fenced code blocks, but we prefer `.. sourcecode::`.
- When using `::` to format unhighlighted literal blocks, place the `::` on their own line.
- Use double backtics to surround inline code segments: ` ``x`` `.
- For ordered lists, use `#.` over numeric item lables like `1.`
- Use `.. figure::` over `.. image::` since the former has a richer set of options.

## Language Conventions

- Use the Oxford comma!
- Use a single space after end-of-sentence punctuation! 
- Use "JavaScript" over the abbrevition "JS"
- Hyphenate compound adjectives, such as "left-hand side"
- Prefer "cannot" over "can not"
