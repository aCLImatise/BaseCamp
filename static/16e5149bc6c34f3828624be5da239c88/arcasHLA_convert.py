from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Arcashla_Convert_V0_1_0 = CommandToolBuilder(tool="arcasHLA_convert", base_command=["arcasHLA", "convert"], inputs=[ToolInput(tag="in_resolution", input_type=Boolean(optional=True), prefix="--resolution", doc=InputDocumentation(doc="output resolution (1,2,3) or grouping (g-group, p-group)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output file\ndefault: ./file_basename.resolution.tsv")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="force conversion for grouped alleles even if it results in loss of resolution")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="tsv containing HLA genotypes, see github for example file structure."))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output file\ndefault: ./file_basename.resolution.tsv"))], container="quay.io/biocontainers/arcas-hla:0.2.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arcashla_Convert_V0_1_0().translate("wdl")

