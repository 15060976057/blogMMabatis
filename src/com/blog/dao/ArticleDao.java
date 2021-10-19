package com.blog.dao;

import org.apache.ibatis.annotations.Param;

import com.blog.domain.Article;

public interface ArticleDao {
int save(Article article)throws Exception;
Article display(String ACategory)throws Exception;
}
