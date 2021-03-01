from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Supported_Organisms_Ensemblgenomes_V0_1_0 = CommandToolBuilder(tool="rsat_supported_organisms_ensemblgenomes", base_command=["rsat", "supported-organisms-ensemblgenomes"], inputs=[ToolInput(tag="in_i_find_them", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="(I did not find them yet)")), ToolInput(tag="in_supported_organisms_ensembl_genomes", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_expressions_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1mspecies_taxid[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_attribute_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1mSEE ALSO[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Supported_Organisms_Ensemblgenomes_V0_1_0().translate("wdl", allow_empty_container=True)

