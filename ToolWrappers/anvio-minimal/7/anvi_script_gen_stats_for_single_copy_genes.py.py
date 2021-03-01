from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Anvi_Script_Gen_Stats_For_Single_Copy_Genes_Py_V0_1_0 = CommandToolBuilder(tool="anvi_script_gen_stats_for_single_copy_genes.py", base_command=["anvi-script-gen_stats_for_single_copy_genes.py"], inputs=[ToolInput(tag="in_list_sources", input_type=Boolean(optional=True), prefix="--list-sources", doc=InputDocumentation(doc="Show available single-copy gene search results and exit.\n(default: False)")), ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="Source to focus on. If none declared, all single-copy gene\nsources are going to be listed. (default: None)"))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Gen_Stats_For_Single_Copy_Genes_Py_V0_1_0().translate("wdl")

