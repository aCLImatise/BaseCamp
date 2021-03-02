from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean

Prophyle_Propagation_Preprocessing_Py_V0_1_0 = CommandToolBuilder(tool="prophyle_propagation_preprocessing.py", base_command=["prophyle_propagation_preprocessing.py"], inputs=[ToolInput(tag="in_rate_sampling_tree", input_type=Float(optional=True), prefix="-s", doc=InputDocumentation(doc="rate of sampling the tree [no sampling]")), ToolInput(tag="in_autocomplete_tree_names", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="autocomplete tree (names of internal nodes and FASTA paths)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="verbose")), ToolInput(tag="in_add_prefixes_node", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="do not add prefixes to node names"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Propagation_Preprocessing_Py_V0_1_0().translate("wdl", allow_empty_container=True)

