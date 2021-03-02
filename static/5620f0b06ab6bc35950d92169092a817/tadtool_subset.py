from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tadtool_Subset_V0_1_0 = CommandToolBuilder(tool="tadtool_subset", base_command=["tadtool", "subset"], inputs=[ToolInput(tag="in_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="Square Hi-C Matrix as tab-delimited or .npy file (created\nwith numpy.save) or sparse matrix format (each line: <row\nregion index> <column region index> <matrix value>)")), ToolInput(tag="in_regions", input_type=String(), position=1, doc=InputDocumentation(doc="BED file (no header) with regions corresponding to the\nnumber of rows in the provided matrix. Fourth column, if\npresent, denotes name field, which is used as an identifier\nin sparse matrix notation.")), ToolInput(tag="in_sub_region", input_type=String(), position=2, doc=InputDocumentation(doc="Region of the Hi-C matrix to display in plot. Format:\n<chromosome>:<start>-<end>, e.g. chr12:31000000-33000000")), ToolInput(tag="in_output_matrix", input_type=String(), position=3, doc=InputDocumentation(doc="Output matrix file.")), ToolInput(tag="in_output_regions", input_type=String(), position=4, doc=InputDocumentation(doc="Output regions file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tadtool_Subset_V0_1_0().translate("wdl", allow_empty_container=True)

