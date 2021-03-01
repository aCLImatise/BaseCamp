from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Gofasta_Sam_Topairalign_V0_1_0 = CommandToolBuilder(tool="gofasta_sam_toPairAlign", base_command=["gofasta", "sam", "toPairAlign"], inputs=[ToolInput(tag="in_genbank", input_type=String(optional=True), prefix="--genbank", doc=InputDocumentation(doc="Genbank format annotation of a sequence in the same coordinates as the alignment")), ToolInput(tag="in_feature", input_type=String(optional=True), prefix="--feature", doc=InputDocumentation(doc="Feature to output (choose one of: gene, CDS). If none is specified, will output the entire alignment")), ToolInput(tag="in_out_path", input_type=File(optional=True), prefix="--outpath", doc=InputDocumentation(doc="Output path where fasta files will be written")), ToolInput(tag="in_omit_reference", input_type=Boolean(optional=True), prefix="--omit-reference", doc=InputDocumentation(doc="Omit the reference sequences from the output alignments")), ToolInput(tag="in_skip_insertions", input_type=Boolean(optional=True), prefix="--skip-insertions", doc=InputDocumentation(doc="Skip insertions relative to the reference")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference fasta file used to generate the sam file")), ToolInput(tag="in_sam_file", input_type=String(optional=True), prefix="--samfile", doc=InputDocumentation(doc="samfile to read. If none is specified, will read from stdin")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use (default 1)"))], outputs=[ToolOutput(tag="out_out_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_path", type_hint=File()), doc=OutputDocumentation(doc="Output path where fasta files will be written"))], container="quay.io/biocontainers/gofasta:0.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gofasta_Sam_Topairalign_V0_1_0().translate("wdl")

