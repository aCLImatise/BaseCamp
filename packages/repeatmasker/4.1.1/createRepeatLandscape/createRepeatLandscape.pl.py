from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Createrepeatlandscape_Pl_V0_1_0 = CommandToolBuilder(tool="createRepeatLandscape.pl", base_command=["createRepeatLandscape.pl"], inputs=[ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="Displays the version of the program")), ToolInput(tag="in_div", input_type=File(optional=True), prefix="-div", doc=InputDocumentation(doc="The divergence summary file created with the\ncalcDivergenceFromAlign.pl script.")), ToolInput(tag="in_set_genome_size", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="#\nSet the genome size used in percentage calculations.")), ToolInput(tag="in_two_bit", input_type=File(optional=True), prefix="-twoBit", doc=InputDocumentation(doc="Get the genome size directly from the sequence file ( excluding Ns\n). This option requires that the UCSC utility 'twoBitInfo' is in\nyour path.")), ToolInput(tag="in_output_javascript_page", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="Output javascript only and not a fully constructed HTML page.")), ToolInput(tag="in_example_dot_align_do_tgz", input_type=String(), position=0, doc=InputDocumentation(doc="This creates an additional file 'example_with_div.align' which contains"))], outputs=[], container="quay.io/biocontainers/repeatmasker:4.1.1--pl526_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Createrepeatlandscape_Pl_V0_1_0().translate("wdl")

