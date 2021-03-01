from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Float

Spliceai_V0_1_0 = CommandToolBuilder(tool="spliceai", base_command=["spliceai"], inputs=[ToolInput(tag="in_path_input_standard", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="[input]     path to the input VCF file, defaults to standard in")), ToolInput(tag="in_path_output_standard", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="[output]    path to the output VCF file, defaults to standard out")), ToolInput(tag="in_path_reference_genome", input_type=File(optional=True), prefix="-R", doc=InputDocumentation(doc="path to the reference genome fasta file")), ToolInput(tag="in_gencode_vlift_inpackage", input_type=File(optional=True), prefix="-A", doc=InputDocumentation(doc="'grch37' (GENCODE V24lift37 canonical annotation file in\npackage), 'grch38' (GENCODE V24 canonical annotation file in\npackage), or path to a similar custom gene annotation file")), ToolInput(tag="in_maximum_distance_variant", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="[distance]  maximum distance between the variant and gained/lost splice\nsite, defaults to 50")), ToolInput(tag="in_mask_scores_representing", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="[mask]      mask scores representing annotated acceptor/donor gain and\nunannotated acceptor/donor loss, defaults to 0\n")), ToolInput(tag="in_one_dot_three", input_type=Float(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_path_output_standard", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_output_standard", type_hint=File()), doc=OutputDocumentation(doc="[output]    path to the output VCF file, defaults to standard out"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spliceai_V0_1_0().translate("wdl", allow_empty_container=True)

