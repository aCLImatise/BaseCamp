from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Boolean

Discasm_V0_1_0 = CommandToolBuilder(tool="DISCASM", base_command=["DISCASM"], inputs=[ToolInput(tag="in_chimeric_junctions", input_type=File(optional=True), prefix="--chimeric_junctions", doc=InputDocumentation(doc="STAR Chimeric.out.junction file")), ToolInput(tag="in_aligned_bam", input_type=File(optional=True), prefix="--aligned_bam", doc=InputDocumentation(doc="aligned bam file from your favorite rna-seq alignment\ntool")), ToolInput(tag="in_left_fq", input_type=File(optional=True), prefix="--left_fq", doc=InputDocumentation(doc="left fastq file")), ToolInput(tag="in_right_fq", input_type=File(optional=True), prefix="--right_fq", doc=InputDocumentation(doc="right fastq file")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_de_novo_assembler", input_type=String(optional=True), prefix="--denovo_assembler", doc=InputDocumentation(doc="de novo assembly method: Trinity|Oases|OasesMultiK")), ToolInput(tag="in_add_trinity_params", input_type=String(optional=True), prefix="--add_trinity_params", doc=InputDocumentation(doc="any additional parameters to pass on to Trinity if\nTrinity is the chosen assembler.")), ToolInput(tag="in_normalize_reads", input_type=Boolean(optional=True), prefix="--normalize_reads", doc=InputDocumentation(doc="perform in silico normalization prior to de novo\nassembly (not needed if using Trinity, since Trinity\nperforms normalization internally\n"))], outputs=[ToolOutput(tag="out_chimeric_junctions", output_type=File(optional=True), selector=InputSelector(input_to_select="in_chimeric_junctions", type_hint=File()), doc=OutputDocumentation(doc="STAR Chimeric.out.junction file")), ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Discasm_V0_1_0().translate("wdl", allow_empty_container=True)

