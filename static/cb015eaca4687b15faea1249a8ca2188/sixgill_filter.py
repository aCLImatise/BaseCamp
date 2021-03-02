from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Sixgill_Filter_V0_1_0 = CommandToolBuilder(tool="sixgill_filter", base_command=["sixgill_filter"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output metapeptide database file")), ToolInput(tag="in_minor_f_length", input_type=Int(optional=True), prefix="--minorflength", doc=InputDocumentation(doc="minimum ORF length")), ToolInput(tag="in_mina_a_seq_length", input_type=Int(optional=True), prefix="--minaaseqlength", doc=InputDocumentation(doc="minimum AA sequence length")), ToolInput(tag="in_min_read_count", input_type=Int(optional=True), prefix="--minreadcount", doc=InputDocumentation(doc="minimum read count")), ToolInput(tag="in_min_qual_score", input_type=Int(optional=True), prefix="--minqualscore", doc=InputDocumentation(doc="minimum basecall quality")), ToolInput(tag="in_min_longest_tryp_peple_n", input_type=Int(optional=True), prefix="--minlongesttryppeplen", doc=InputDocumentation(doc="minimum length of the longest tryptic peptide")), ToolInput(tag="in_min_meta_gene_score", input_type=Int(optional=True), prefix="--minmetagenescore", doc=InputDocumentation(doc="Minimum MetaGene score (-1 for none)")), ToolInput(tag="in_max_meta_peptides", input_type=Int(optional=True), prefix="--maxmetapeptides", doc=InputDocumentation(doc="maximum number of metapeptides to write")), ToolInput(tag="in_no_gzip_out", input_type=Boolean(optional=True), prefix="--nogzipout", doc=InputDocumentation(doc="Write plaintetxt (non-gzipped) output (default\ngzipped)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Enable debug logging"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output metapeptide database file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sixgill_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

