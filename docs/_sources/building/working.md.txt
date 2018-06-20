# Working With An Existing Module Site

To edit and publish content on an existing curriculum site, make sure you have the necessary prerequisites and have set up Sphinx, as detailed in [Setting Up A New Module Site](setup.html).

## Building the Site

Clone the repository and, from the project directory, verify that you can build the site.

```
$ ./build.sh
Running Sphinx v1.7.2
loading pickled environment... not yet created
building [mo]: all of 0 po files
building [html]: all source files
updating environment: 1 added, 0 changed, 0 removed
reading sources... [100%] index                                                                     
looking for now-outdated files... none found
pickling environment... done
checking consistency... done
preparing documents... done
writing output... [100%] index                                                                      
generating indices... genindex
writing additional pages... search
copying static files... done
copying extra files... done
dumping search index in English (code: en) ... done
dumping object inventory... done
build succeeded.

The HTML pages are in docs.
```

If the build script fails due to a permissions error, enable its executable bit:

```
$ chmod +x build.sh
```

The build script builds HTML files from the source Markdown and reStructuredText files, using a template. It places the built files in the `/docs` folder so they can be hosted via GitHub Pages.

## Viewing the Site Locally

When updating a site, you should build and proof your changes locally before committing them. To do this, we'll use Python's `http.server` module.

### macOS and Linux

Add the following line to your `~/.bash_profile` (macOS) or `~/.bashrc` (Linux):

```
alias serve='python -m http.server'
```

Open a second terminal window and navigate to the project's `/docs` folder. Then run:

```
$ serve
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
```

You can now view the site at `localhost:8000`. You can rebuild the site in another window while the server is still running, and changes will be immediately reflected.

### Windows

First check to make sure you have a `~/.bash_profile` and a `~/.bashrc` file, as most Windows machines do not automatically create these files. If they do not exist create them using the following commands:

```
$ touch ~/.bash_profile
$ touch ~/.bashrc
```

Now add the following line to your `.bash_profile` if it is not already there:

```
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
```

Then add the following line to your `.bashrc` file:

```
alias serve='python -m http.server'
```

Open a second terminal window and navigate to the project's `/docs` folder. Then run:

```
$ serve
```

You can now view the site at `localhost:8000`. You can rebuild the site in another window while the server is still running, and changes will be immediately reflected.

## Editing Documents

- Markdown reference: http://commonmark.org/
- RST: 
    - Sections: http://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html#sections
- style guide
- tables
- images
- avoid smart quotes

## Deploying

- deploying
    - staff
    - non-staff (via PR)
