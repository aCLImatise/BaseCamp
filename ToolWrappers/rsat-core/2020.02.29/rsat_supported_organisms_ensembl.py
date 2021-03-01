from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Rsat_Supported_Organisms_Ensembl_V0_1_0 = CommandToolBuilder(tool="rsat_supported_organisms_ensembl", base_command=["rsat", "supported-organisms-ensembl"], inputs=[ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="-help", doc=InputDocumentation(doc="(must be first argument) display options")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="-db", doc=InputDocumentation(doc="Supported: ensembl | ensemblgenomes")), ToolInput(tag="in_branch_id", input_type=Boolean(optional=True), prefix="-branch_id", doc=InputDocumentation(doc="Select only species belonging to a given phylogenetic\nbranch, given its taxonomic ID.")), ToolInput(tag="in_output_file_specified", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file. If not specified, the result is printed on the\nstandard output.\n")), ToolInput(tag="in_genomics", input_type=String(), position=0, doc=InputDocumentation(doc="administration"))], outputs=[ToolOutput(tag="out_output_file_specified", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_specified", type_hint=File()), doc=OutputDocumentation(doc="Output file. If not specified, the result is printed on the\nstandard output.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Supported_Organisms_Ensembl_V0_1_0().translate("wdl", allow_empty_container=True)

