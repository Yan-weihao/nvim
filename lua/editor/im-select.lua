if vim.fn.executable("fcitx5-remote") == 1 then
		vim.cmd([[
		let g:im_select_get_im_cmd = ["fcitx5-remote"]
		let g:im_select_default = '1'
		let g:ImSelectSetImCmd = {
			\ key ->
			\ key == 1 ? ['fcitx5-remote', '-c'] :
			\ key == 2 ? ['fcitx5-remote', '-o'] :
			\ key == 0 ? ['fcitx5-remote', '-c'] :
			\ execute("throw 'invalid im key'")
			\ }
			]])
	end

