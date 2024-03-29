import style from '../styles/TableRow.module.css'
import truncateEthAddress from 'truncate-eth-address'
const TableRow = ({ player }) => {
  return (
    <div className={style.wrapper}>
      <div className={style.address}>{player ? truncateEthAddress(player) : ''}</div>
      <div className={style.ethAmmount}>
        <span className={style.goldAccent}>+0.01 ETH</span>
      </div>
    </div>
  )
}
export default TableRow