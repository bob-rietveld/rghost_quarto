return {
  ['rghost'] = function(args, kwargs, meta)
    return pandoc.Str("Hello from Rghost!")
  end,

['button'] = function(urls, linkText)
    return pandoc.RawInline('html', "<div class='kg-card kg-button-card kg-align-center'> <p><a class='kg-btn kg-btn-accent' href="..urls[1]..">Button</a></p></div>")
end



}


