from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Test_Gromacs_Py_Py_V0_1_0 = CommandToolBuilder(tool="test_gromacs_py.py", base_command=["test_gromacs_py.py"], inputs=[ToolInput(tag="in__genionshdneutral", input_type=String(), position=1, doc=InputDocumentation(doc=": genion_SH3_D_neutral")), ToolInput(tag="in_var_1", input_type=String(), position=0, doc=InputDocumentation(doc=": 1y0m")), ToolInput(tag="in__initemym", input_type=String(), position=1, doc=InputDocumentation(doc=": Init_em_1y0m")), ToolInput(tag="in_var_3", input_type=String(), position=0, doc=InputDocumentation(doc=": 1y0m")), ToolInput(tag="in__equihadsh", input_type=String(), position=1, doc=InputDocumentation(doc=": equi_HA_D_SH3")), ToolInput(tag="in___equihadshequihadshcompactpdb", input_type=String(), position=2, doc=InputDocumentation(doc=": .../equi_HA_D_SH3/equi_HA_D_SH3_compact.pdb")), ToolInput(tag="in_tpr", input_type=String(), position=3, doc=InputDocumentation(doc=": .../equi_HA_D_SH3/equi_HA_D_SH3.tpr")), ToolInput(tag="in_xtc", input_type=String(), position=4, doc=InputDocumentation(doc=": .../equi_HA_D_SH3/equi_HA_D_SH3.xtc")), ToolInput(tag="in_edr", input_type=String(), position=5, doc=InputDocumentation(doc=": .../equi_HA_D_SH3/equi_HA_D_SH3.edr")), ToolInput(tag="in_var_9", input_type=String(), position=0, doc=InputDocumentation(doc=": 1y0m")), ToolInput(tag="in__usrlocallibpythonsitepackagesgromacspytestfilesympdb", input_type=String(), position=1, doc=InputDocumentation(doc=": usr/local/lib/python3.8/site-packages/gromacs_py/test_files/1y0m.pdb"))], outputs=[], container="quay.io/biocontainers/gromacs_py:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Gromacs_Py_Py_V0_1_0().translate("wdl")

