from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gobambus2_V0_1_0 = CommandToolBuilder(tool="goBambus2", base_command=["goBambus2"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc=": run ALL steps (irrespective of flags)")), ToolInput(tag="in_contigs", input_type=Boolean(optional=True), prefix="--contigs", doc=InputDocumentation(doc=": indicates to start with pre-assembled contigs")), ToolInput(tag="in_reads", input_type=Boolean(optional=True), prefix="--reads", doc=InputDocumentation(doc=": indicates to start with reads, assemble with Minimums")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc=": increase to full verbosity")), ToolInput(tag="in_two_amos", input_type=Boolean(optional=True), prefix="--2amos", doc=InputDocumentation(doc=": use toAmos, create AMOS format AFG")), ToolInput(tag="in_two_fast_a", input_type=Boolean(optional=True), prefix="--2fasta", doc=InputDocumentation(doc=": create FASTA contig output")), ToolInput(tag="in_bundle", input_type=Boolean(optional=True), prefix="--bundle", doc=InputDocumentation(doc=": run Bambus2 bundler")), ToolInput(tag="in_clk", input_type=Boolean(optional=True), prefix="--clk", doc=InputDocumentation(doc=": run Bambus2 create links binary")), ToolInput(tag="in_minimus", input_type=Boolean(optional=True), prefix="--minimus", doc=InputDocumentation(doc=": run Minimus to assemble reads")), ToolInput(tag="in_orient", input_type=Boolean(optional=True), prefix="--orient", doc=InputDocumentation(doc=": run main Bambus2 binary, to Order & Orient contigs")), ToolInput(tag="in_prints_caff", input_type=Boolean(optional=True), prefix="--printscaff", doc=InputDocumentation(doc=": create FASTA scaffold output")), ToolInput(tag="in_reps", input_type=Boolean(optional=True), prefix="--reps", doc=InputDocumentation(doc=": Run Bambus2 graph-based repeat detection binary"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gobambus2_V0_1_0().translate("wdl", allow_empty_container=True)

