package ec.com.pry.demokruger.client.repository;

import ec.com.pry.demokruger.client.entity.AdminEntity;
import ec.com.pry.demokruger.client.repository.configuration.IConfigJPAPersistence;

/**
 * Interface Admin Repository
 * @author Yuli.
 */
public interface IAdminRepository extends IConfigJPAPersistence<AdminEntity> {
    void saveAdminCredenciales(AdminEntity adminEntity);
}
