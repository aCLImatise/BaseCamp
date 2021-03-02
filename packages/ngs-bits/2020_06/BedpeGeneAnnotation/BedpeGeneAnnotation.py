from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bedpegeneannotation_V0_1_0 = CommandToolBuilder(tool="BedpeGeneAnnotation", base_command=["BedpeGeneAnnotation"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input BEDPE file containing the SVs.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output BEDPE file containing the annotated SVs.")), ToolInput(tag="in_add_simple_gene_names", input_type=Boolean(optional=True), prefix="-add_simple_gene_names", doc=InputDocumentation(doc="Adds an additional column containing only the list of gene names.\nDefault value: 'false'")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BEDPE file containing the annotated SVs."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedpegeneannotation_V0_1_0().translate("wdl", allow_empty_container=True)

