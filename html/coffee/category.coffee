class Category extends Node
    @title = ['Category', 'Categories']

    constructor: (@node) ->
        super(@node)

    render: (container) ->
        div = $('<div class="item"/>')
        container.append(div)

        a = Page.make_link(@ref, @name)
        a.attr('id', @id)

        div.append(a)
        div.append(new Doc(@brief).render())

Node.types.category = Category

# vi:ts=4:et
