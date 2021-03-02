from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Float

Pdbsearcher_Py_V0_1_0 = CommandToolBuilder(tool="PdbSearcher.py", base_command=["PdbSearcher.py"], inputs=[ToolInput(tag="in_ion", input_type=String(optional=True), prefix="--ion", doc=InputDocumentation(doc="Element symbol of ion, e.g. Zn")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="--list", doc=InputDocumentation(doc="List file name, list file contains one PDB file name\nper line")), ToolInput(tag="in_env", input_type=File(optional=True), prefix="--env", doc=InputDocumentation(doc="Environment file name. An environment file is used to\nstore the metal center environment information such as\nligating atoms, distance, geometry etc. For each bond,\nthere is a record.")), ToolInput(tag="in_sum", input_type=File(optional=True), prefix="--sum", doc=InputDocumentation(doc="Summary file name. A summary file is used to store the\nmetal center summary information such as metal center\ngeometry, ligating residues etc. For each metal center\nthere is a record.")), ToolInput(tag="in_cut", input_type=Float(optional=True), prefix="--cut", doc=InputDocumentation(doc="Optional. The cut off value used to detect the bond\nbetween metal ion and ligating atoms. The unit is\nAngstroms. If there is no value specified, the default\nalgorithm will be used. The default algorithm\nrecognizes the bond when its distance is no less than\n0.1 (smaller than 0.1 usually indicates a low quality\nstructure) and no bigger than the covalent radius sum\nof the two atoms with a tolerance of 0.4.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pdbsearcher_Py_V0_1_0().translate("wdl", allow_empty_container=True)

