return {
  ['rghost'] = function(args, kwargs, meta)
    return pandoc.Str("Hello from Rghost!")
  end,

['button'] = function(content)
    return pandoc.RawBlock('html', "<!--kg-card-begin:html--><div class='kg-card kg-button-card kg-align-center'><p><a class='kg-btn kg-btn-accent' href="..content[1]..">"..content[2].."</a></p></div><!--kg-card-end: html-->")
end ,

["callout"] = function(content)

   -- Check if the text is valid
 if type(content[1]) == "string" and content[1] ~= "" then html = content[1] else return 'No content' end
 if not content[2] then emoji = "" else emoji = content[2] end

    return pandoc.RawBlock('html', "<!--kg-card-begin:html--><div class='kg-card kg-callout-card kg-callout-card-accent'><div class='kg-callout-emoji'>"..emoji.."</div><div class='kg-callout-text'>"..html.."</div></div><!--kg-card-end: html-->")
end

}


