	.text

	.globl x86_32_align_call
	.type  x86_32_align_call, @function

x86_32_align_call:
	mov    %esp,%ecx
	sub    $0x2c,%esp
	and    $-16,%esp
	sub    $4, %esp
	mov    (%ecx),%eax
	mov    %eax,(%esp)
	mov    0x4(%ecx),%eax
	mov    %eax,0x4(%esp)
	mov    0x8(%ecx),%eax
	mov    %eax,0x8(%esp)
	mov    0xc(%ecx),%eax
	mov    %eax,0xc(%esp)
	mov    0x10(%ecx),%eax
	mov    %eax,0x10(%esp)
	mov    0x14(%ecx),%eax
	mov    %eax,0x14(%esp)
	mov    0x18(%ecx),%eax
	mov    %eax,0x18(%esp)
	mov    0x1c(%ecx),%eax
	mov    %eax,0x1c(%esp)
	mov    0x20(%ecx),%eax
	mov    %eax,0x20(%esp)
	mov    0x24(%ecx),%eax
	mov    %eax,0x24(%esp)

	add    $4,%ecx		# ecx contains sp before the call to x86_32_align_call
	mov    %ecx,0x28(%esp)	# save the previous SP where the caller can find it

	jmp    *%edx

	.size	x86_32_align_call, .-x86_32_align_call


	.globl GetMySP
	.type  GetMySP, @function

GetMySP:
	mov %esp, %eax
	add $4, %eax
	ret

	.size	GetMySP, .-GetMySP
