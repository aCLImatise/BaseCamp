from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Tigmint_Molecule_V0_1_0 = CommandToolBuilder(tool="tigmint_molecule", base_command=["tigmint-molecule"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output TSV file [stdout]")), ToolInput(tag="in_out_bam", input_type=File(optional=True), prefix="--out-bam", doc=InputDocumentation(doc="Output BAM file with MI tags (optional)")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="--bed", doc=InputDocumentation(doc="Output in BED format [default]")), ToolInput(tag="in_tsv", input_type=Boolean(optional=True), prefix="--tsv", doc=InputDocumentation(doc="Output in TSV format")), ToolInput(tag="in_dist", input_type=Int(optional=True), prefix="--dist", doc=InputDocumentation(doc="Maximum distance between reads in the same molecule\n[50000]")), ToolInput(tag="in_reads", input_type=Int(optional=True), prefix="--reads", doc=InputDocumentation(doc="Minimum number of reads per molecule (duplicates are\nfiltered out) [4]")), ToolInput(tag="in_mapq", input_type=Int(optional=True), prefix="--mapq", doc=InputDocumentation(doc="Minimum mapping quality [0]")), ToolInput(tag="in_as_ratio", input_type=Int(optional=True), prefix="--as-ratio", doc=InputDocumentation(doc="Minimum ratio of alignment score (AS) over read length\n[0.65]")), ToolInput(tag="in_nm", input_type=Int(optional=True), prefix="--nm", doc=InputDocumentation(doc="Maximum number of mismatches (NM) [5]")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="Minimum molecule size [2000]")), ToolInput(tag="in_stdin", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output TSV file [stdout]")), ToolOutput(tag="out_out_bam", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_bam", type_hint=File()), doc=OutputDocumentation(doc="Output BAM file with MI tags (optional)"))], container="quay.io/biocontainers/tigmint:1.2.2--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tigmint_Molecule_V0_1_0().translate("wdl")

