from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Hic2Cool_Convert_V0_1_0 = CommandToolBuilder(tool="hic2cool_convert", base_command=["hic2cool", "convert"], inputs=[ToolInput(tag="in_resolution", input_type=Int(optional=True), prefix="--resolution", doc=InputDocumentation(doc="integer bp resolution desired in cooler file. Setting\nto 0 (default) will use all resolutions. If all\nresolutions are used, a multi-res .cool file will be\ncreated, which has a different hdf5 structure. See the\nREADME for more info")), ToolInput(tag="in_nproc", input_type=Int(optional=True), prefix="--nproc", doc=InputDocumentation(doc="number of processes to use to parse hic file. default\nset to 1")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="if used, silence standard program output")), ToolInput(tag="in_warnings", input_type=Boolean(optional=True), prefix="--warnings", doc=InputDocumentation(doc="if used, print out non-critical WARNING messages,\nwhich are hidden by default. Silent mode takes\nprecedence over this\n")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="hic input file path")), ToolInput(tag="in_outfile", input_type=String(), position=1, doc=InputDocumentation(doc="cooler output file path"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hic2Cool_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

