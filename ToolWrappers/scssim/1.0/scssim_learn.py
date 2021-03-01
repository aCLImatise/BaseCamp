from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Scssim_Learn_V0_1_0 = CommandToolBuilder(tool="scssim_learn", base_command=["scssim", "learn"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="normal BAM file")), ToolInput(tag="in_target", input_type=File(optional=True), prefix="--target", doc=InputDocumentation(doc="exome target file (.bed) for whole-exome sequencing[default:null]")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="the VCF file generated from the normal BAM")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="genome reference file (.fasta) to which the reads were aligned")), ToolInput(tag="in_w_size", input_type=Int(optional=True), prefix="--wsize", doc=InputDocumentation(doc="the length of windows used to infer GC-content bias[default:1000]")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="the length of kmer sequence [default:3]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_sam_tools", input_type=File(optional=True), prefix="--samtools", doc=InputDocumentation(doc="the path of samtools [default:samtools]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scssim_Learn_V0_1_0().translate("wdl", allow_empty_container=True)

