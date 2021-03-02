from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Htseq_Qa_V0_1_0 = CommandToolBuilder(tool="htseq_qa", base_command=["htseq-qa"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="type of read_file (one of: sam [default], bam, solexa-\nexport, fastq, solexa-fastq)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output filename (default is <read_file>.pdf)")), ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--readlength", doc=InputDocumentation(doc="the maximum read length (when not specified, the\nscript guesses from the file")), ToolInput(tag="in_gamma", input_type=String(optional=True), prefix="--gamma", doc=InputDocumentation(doc="the gamma factor for the contrast adjustment of the\nquality score plot")), ToolInput(tag="in_no_split", input_type=Boolean(optional=True), prefix="--nosplit", doc=InputDocumentation(doc="do not split reads in unaligned and aligned ones")), ToolInput(tag="in_max_qual", input_type=Int(optional=True), prefix="--maxqual", doc=InputDocumentation(doc="the maximum quality score that appears in the data\n(default: 41)")), ToolInput(tag="in_primary_only", input_type=Boolean(optional=True), prefix="--primary-only", doc=InputDocumentation(doc="For SAM/BAM input files, ignore alignments that are\nnot primary. This only affects 'multimapper' reads\nthat align to several regions in the genome. By\nchoosing this option, each read will only count as\none; without this option, each of its alignments\ncounts as one.")), ToolInput(tag="in_max_records", input_type=Int(optional=True), prefix="--max-records", doc=InputDocumentation(doc="Limit the analysis to the first N reads/alignments.\n"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output filename (default is <read_file>.pdf)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htseq_Qa_V0_1_0().translate("wdl", allow_empty_container=True)

