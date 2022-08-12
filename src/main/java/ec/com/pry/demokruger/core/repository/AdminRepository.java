package ec.com.pry.demokruger.core.repository;

import ec.com.pry.demokruger.client.entity.AdminEntity;
import ec.com.pry.demokruger.client.repository.IAdminRepository;
import ec.com.pry.demokruger.core.repository.configuration.ConfigJPAPersistence;

/**
 * Admin Repository
 * @author Yuli.
 */
public class AdminRepository extends ConfigJPAPersistence<AdminEntity> implements IAdminRepository {

    /**
     * Constructor.
     */
    public AdminRepository() {
        super(AdminEntity.class);
    }

    /**
     *{@inheritDoc}
     */
    @Override
    public void saveAdminCredenciales(AdminEntity adminEntity) {
        save(adminEntity);
    }
}
