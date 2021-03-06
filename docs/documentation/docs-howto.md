# Docs How-to

The repository uses [docsify](https://docsify.js.org) as the main documentation tool since it is simple for new contributors to get started.

<!-- panels:start -->

<!-- div:title-panel -->

---

## Prerequisite

<!-- div:left-panel -->

### Step 1: Install Node.js

<!-- div:right-panel -->

Checkout the `Node.js` instructions for installation [here](https://nodejs.org/en/).

---

<!-- div:left-panel -->

### Step 2: Install docsify CLI

<!-- div:right-panel -->

The following command installs the docsify CLI globally:

```bash
npm i docsify-cli -g
```
> [!NOTE]
> For more information, see the [docsify documentation](https://docsify.js.org/#/quickstart).

<!-- panels:end -->

---

## Getting started

<!-- tabs:start -->

### ** Run locally **

Use the following command to start a local server to preview the docs site:

```bash
# Change directory to the project root
cd $PROJECT_ROOT

# This will start the server at http://localhost:3000
docsify serve docs
```

After running the command, you can open <http://localhost:3000> to preview the docs.

> [!NOTE]
> The command above supports hotreload, so when you make changes in the markdown files, you don't need to refresh the page as it will load the change automatically.

### ** Manually (not recommended) **

If for some reason the other approach doesn't work, you can manually start a server by:

```bash
cd $PROJECT_ROOT/docs && python -m SimpleHTTPServer 3000
```

> [!NOTE]
> This doesn't support hot reload. When you make a change, you need to manually refresh the page in the browser for it to take effect.

<!-- tabs:end -->

## Tricks

### Tabs layout

When demonstrating options, a tabs view like this can be helpful:

<!-- tabs:start -->

#### ** Option 1 **

I am option 1.

#### ** Option 2 **

I am option 2.

#### ** Option 3 **

I am option 3.

<!-- tabs:end -->

You can achieve the tabs above by putting sections with bolded titles between `<!-- tabs:start -->` and `<!-- tabs:start -->`.

Here is an example:

<!-- panels:start -->

<!-- div:left-panel -->

```markdown
<!-- tabs:start -->

#### ** Option a **

I am option a.

#### ** Option b **

I am option b.

#### ** Option c **

I am option c.

<!-- tabs:end -->
```

<!-- div:right-panel -->

<!-- tabs:start -->

#### ** Option a **

I am option a.

#### ** Option b **

I am option b.

#### ** Option c **

I am option c.

<!-- tabs:end -->

<!-- panels:end -->

> [!Note]
> For more information or customization, see [the plugin docs](https://jhildenbiddle.github.io/docsify-tabs).

### Two-column layout

To demonstrate step-by-step instructions, a two-colum view like this can be handy:

---

<!-- panels:start -->

<!-- div:left-panel -->

Step 1

<!-- div:right-panel -->

Drink some coffee

<!-- div:left-panel -->

Step 2

<!-- div:right-panel -->

Write code

<!-- panels:end -->

---

This can be done with enclosing your panels within `<!-- panels:start -->` and `<!-- panels:end -->`, and each panel is represented by the `Markdown` content under `<!-- div:left-panel -->` or `<!-- div:left-panel -->`.

For example, the two-column view above is generated with:

```markdown
<!-- panels:start -->

<!-- div:left-panel -->

Step 1

<!-- div:right-panel -->

Drink some coffee

<!-- div:left-panel -->

Step 2

<!-- div:right-panel -->

Write code

<!-- panels:end -->
```

> [!Note]
> For more information or customization, see [the plugin docs](https://vagnerdomingues.github.io/docsify-example-panels).

### Language highlighting

The language highlighting is provided by [Prism](https://prismjs.com).

To check all the supported languages, see [the list](https://prismjs.com/#supported-languages).

To support a new language on this site, find `<!-- Language highlighting support -->` in `docs/index.html` and add the new language to the list.

### Diagrams

<!-- panels:start -->

<!-- div:title-panel -->

Diagrams are supported with [the mermaid project](https://github.com/mermaid-js/mermaid). For more examples on how to work with mermaid, see [the mermaid docs](https://mermaid-js.github.io/mermaid/#/). Here is an simple example, the diagram blow (right side) can be generated from the code (left):

<!-- div:left-panel -->

```markdown
$ 	```mermaid
$	graph LR
$		A --- B
$	    B-->C[fa:fa-ban forbidden]
$	    B-->D(fa:fa-spinner);
$	```
```

> [!NOTE]
> The dollar signs are there only to scape the backtick. You can safely ignore them.

<!-- div:right-panel -->

```mermaid
graph LR
	A --- B
    B-->C[fa:fa-ban forbidden]
    B-->D(fa:fa-spinner);
```

<!-- panels:end -->

> [!NOTE]
> The diagram support is built with the docsify mermaid plugin. For more information, check the [docs](https://github.com/Leward/mermaid-docsify).

### Changelog

To add new features into `CHANGELOG`, simply add entries to the top of `docs/CHANGELOG.md`.

> [!NOTE]
> The `CHANGELOG` render at the top right corner of in the docs site is built with the `CHANGELOG` plugin. For more customization, check [their documentation](https://github.com/Plugin-contrib/docsify-plugin/tree/master/packages/docsify-changelog-plugin).

### Use emoji

For a full list of `markdown` emoji, check [this list](https://gist.github.com/rxaviers/7360908).

### Dart/Flutter examples

<!-- panels:start -->

<!-- div:left-panel -->

Since Flutter/Dart support compiling to Web, so it's possible to render code snippets or examples to the docs.

With the following code, you can embed a Flutter/Dart example code snippet into the docs like the one shown on the right side:

```markdown
[Dart example](https://dartpad.dev/embed-inline.html?id=5d70bc1889d055c7a18d35d77874af88&split=80&theme=dark ':include :type=iframe width=100% height=400px')
```

> [!NOTE]
> This is achieved with DartPad. For more details, see [DartPad docs](https://github.com/dart-lang/dart-pad/wiki/Embedding-Guide).

<!-- div:right-panel -->

[Dart example](https://dartpad.dev/embed-inline.html?id=5d70bc1889d055c7a18d35d77874af88&split=80&theme=dark ':include :type=iframe width=100% height=400px')

<!-- panels:end -->

### Add page to search

The docsify framework supports full-text search within the docs (see the "Type to search" at the top left corner of the page).

You can add your page into the search context by adding a new `path` entry into the `docsify` configuration in `docs/index.html`. For example, if we want to add this page, `/documentation/docs-howto` into the search context, we can add:

```js
window.$docsify = {
	search = {
		paths: [
			'/documentation/docs-howto',
			// More searchable paths
		]
		// More search configurations
	}
	// More docsify configurations
}
````

> [!Note]
> As the search context is cached periodically, your change may not take effect immediately. To make the cache refresh, you can open the page inspection in Chrome, go to the "Application" tab, clear the local storage, and then refresh the page.

> [!Note]
> For more details, see the [docsify docs on search](https://docsify.js.org/#/plugins?id=full-text-search).

