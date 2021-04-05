from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Abyss_Tofastq_V0_1_0 = CommandToolBuilder(tool="abyss_tofastq", base_command=["abyss-tofastq"], inputs=[ToolInput(tag="in_cat", input_type=Boolean(optional=True), prefix="--cat", doc=InputDocumentation(doc="concatenate the records [default]")), ToolInput(tag="in_interleave", input_type=Boolean(optional=True), prefix="--interleave", doc=InputDocumentation(doc="interleave the records")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="output FASTQ format [default]")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="output FASTA format")), ToolInput(tag="in_bx", input_type=Boolean(optional=True), prefix="--bx", doc=InputDocumentation(doc="copy SAM BX tag to output FASTA comment")), ToolInput(tag="in_chastity", input_type=Boolean(optional=True), prefix="--chastity", doc=InputDocumentation(doc="discard unchaste reads [default]")), ToolInput(tag="in_no_chastity", input_type=Boolean(optional=True), prefix="--no-chastity", doc=InputDocumentation(doc="do not discard unchaste reads")), ToolInput(tag="in_trim_masked", input_type=Boolean(optional=True), prefix="--trim-masked", doc=InputDocumentation(doc="trim masked bases from the ends of reads")), ToolInput(tag="in_no_trim_masked", input_type=Boolean(optional=True), prefix="--no-trim-masked", doc=InputDocumentation(doc="do not trim masked bases from the ends\nof reads [default]")), ToolInput(tag="in_trim_quality", input_type=String(optional=True), prefix="--trim-quality", doc=InputDocumentation(doc="trim bases from the ends of reads whose\nquality is less than the threshold")), ToolInput(tag="in_standard_quality", input_type=Boolean(optional=True), prefix="--standard-quality", doc=InputDocumentation(doc="zero quality is `!' (33)\ndefault for FASTQ and SAM files")), ToolInput(tag="in_illumina_quality", input_type=Boolean(optional=True), prefix="--illumina-quality", doc=InputDocumentation(doc="zero quality is `@' (64)\ndefault for qseq and export files")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output"))], outputs=[], container="quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Tofastq_V0_1_0().translate("wdl")

