from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Incorporatevcf_Py_V0_1_0 = CommandToolBuilder(tool="incorporateVCF.py", base_command=["incorporateVCF.py"], inputs=[ToolInput(tag="in_threads_to_run", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Threads to run")), ToolInput(tag="in_fasta_file_incorporate", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[FASTA], --fasta [FASTA]\nThe fasta file to incorporate changes into.")), ToolInput(tag="in_file_write_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[OUT], --out [OUT]\nThe file to write resulting fasta file to.")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="The VCF file to use.")), ToolInput(tag="in_no_homozygous", input_type=Boolean(optional=True), prefix="--no-homozygous", doc=InputDocumentation(doc="Don't include homozygous variants (default to include)")), ToolInput(tag="in_heterozygous", input_type=Boolean(optional=True), prefix="--heterozygous", doc=InputDocumentation(doc="Use heterozygous variants")), ToolInput(tag="in_no_snps", input_type=Boolean(optional=True), prefix="--no-snps", doc=InputDocumentation(doc="Don't use SNPs (default to true).")), ToolInput(tag="in_dels", input_type=Boolean(optional=True), prefix="--dels", doc=InputDocumentation(doc="Use Deletions.")), ToolInput(tag="in_ins", input_type=Boolean(optional=True), prefix="--ins", doc=InputDocumentation(doc="Use Insertions.")), ToolInput(tag="in_individual", input_type=String(optional=True), prefix="--individual", doc=InputDocumentation(doc="The Individual to use.")), ToolInput(tag="in_append_chromosome", input_type=Boolean(optional=True), prefix="--append-chromosome", doc=InputDocumentation(doc="Should 'chr' be appended to the chromosome column?.")), ToolInput(tag="in_fast_a", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_file_write_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_write_file", type_hint=File()), doc=OutputDocumentation(doc="[OUT], --out [OUT]\nThe file to write resulting fasta file to."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Incorporatevcf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

