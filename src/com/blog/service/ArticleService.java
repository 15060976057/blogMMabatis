package com.blog.service;

import com.blog.domain.Article;

public interface ArticleService {
	int save(Article article)throws Exception;
	Article display(String ACategory)throws Exception;
}
