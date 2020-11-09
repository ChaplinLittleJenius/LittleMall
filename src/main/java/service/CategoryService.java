package service;

import entity.Category;

import java.util.List;

public interface CategoryService {
    /**
     * 插入新的目录
     * @param category 目录
     * @return 1 表示插入成功 0 表示插入失败
     */
    boolean addCategory(Category category);

    /**
     * 查询所有目录
     * @return 所有目录
     */
    List<Category> selectAllCategory();

    /**
     * 删除指定目录
     * @param category 目录
     * @return 1 表示删除成功 0 表示删除失败
     */
    boolean removeCategory(Category category);

    /**
     * 更新目录
     * @param category 目录
     * @return 1 表示更新成功 0 表示更新失败
     */
    boolean updateCategory(Category category);

    /**
     * 查询所有父目录
     * @return 查询结果
     */
    List<Category> selectFatherCategory();

    /**
     * 查询所有子目录
     * @return 查询结果
     */
    List<Category> selectSonCategory();
}
