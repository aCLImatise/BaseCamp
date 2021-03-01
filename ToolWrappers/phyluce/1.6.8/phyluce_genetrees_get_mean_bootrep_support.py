from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phyluce_Genetrees_Get_Mean_Bootrep_Support_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_get_mean_bootrep_support", base_command=["phyluce_genetrees_get_mean_bootrep_support"], inputs=[ToolInput(tag="in_trees", input_type=File(optional=True), prefix="--trees", doc=InputDocumentation(doc="Tree file")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="config file")), ToolInput(tag="in_schema", input_type=String(optional=True), prefix="--schema", doc=InputDocumentation(doc="The scheme of the input data")), ToolInput(tag="in_root", input_type=String(optional=True), prefix="--root", doc=InputDocumentation(doc="The taxon on which to root trees")), ToolInput(tag="in_var_4", input_type=String(), position=0, doc=InputDocumentation(doc="[--schema {nexus,newick,nexml,fasta,phylip}]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Get_Mean_Bootrep_Support_V0_1_0().translate("wdl", allow_empty_container=True)

