function fish_user_key_bindings
	bind \eh prevd 'commandline -f repaint'
    bind \el nextd 'commandline -f repaint'
    bind \ek cd 'commandline -f repaint'
    bind \ej 'cd -' 'commandline -f repaint'

    bind \e\[1~ beginning-of-line
    bind \e\[3~ delete-char
    bind \e\[4~ end-of-line
    bind \e` clobber_history
    bind \es 'prepend_command sudo'
    ### bang-bang ###
    bind ! bind_bang
    bind '$' bind_dollar
    ### bang-bang ###
    ### fzf ###
    bind \ct '__fzf_ctrl_t'
    bind \cr '__fzf_ctrl_r'
    bind \cx '__fzf_ctrl_x'
    bind \ce '__fzf_ctrl_e'
    bind \ec '__fzf_alt_c'
    if bind -M insert > /dev/null ^ /dev/null
        bind -M insert \ct '__fzf_ctrl_t'
        bind -M insert \cr '__fzf_ctrl_r'
        bind -M insert \cx '__fzf_ctrl_x'
        bind -M insert \ce '__fzf_ctrl_e'
        bind -M insert \ec '__fzf_alt_c'
    end
    ### fzf ###
end