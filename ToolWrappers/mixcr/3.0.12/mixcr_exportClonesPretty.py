from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Mixcr_Exportclonespretty_V0_1_0 = CommandToolBuilder(tool="mixcr_exportClonesPretty", base_command=["mixcr", "exportClonesPretty"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose warning messages.")), ToolInput(tag="in_limit_before", input_type=Int(optional=True), prefix="--limitBefore", doc=InputDocumentation(doc="Limit number of alignments before filtering")), ToolInput(tag="in_chains", input_type=String(optional=True), prefix="--chains", doc=InputDocumentation(doc="Filter export to a specific protein chain gene (e.g. TRA or IGH).")), ToolInput(tag="in_cdr_three_equals", input_type=Int(optional=True), prefix="--cdr3-equals", doc=InputDocumentation(doc="Only output clones where CDR3 (not whole clonal sequence) exactly equals to\ngiven sequence")), ToolInput(tag="in_force_overwrite", input_type=File(optional=True), prefix="--force-overwrite", doc=InputDocumentation(doc="Force overwrite of output file(s).")), ToolInput(tag="in_clone_ids", input_type=String(optional=True), prefix="--clone-ids", doc=InputDocumentation(doc="List of clone ids to export")), ToolInput(tag="in_limit", input_type=Int(optional=True), prefix="--limit", doc=InputDocumentation(doc="Limit number of filtered alignments; no more than N alignments will be")), ToolInput(tag="in_clonal_sequence_contains", input_type=String(optional=True), prefix="--clonal-sequence-contains", doc=InputDocumentation(doc="Only output clones where target clonal sequence contains sub-sequence.")), ToolInput(tag="in_skip", input_type=Int(optional=True), prefix="--skip", doc=InputDocumentation(doc="Number of output alignments to skip")), ToolInput(tag="in_nw", input_type=Boolean(optional=True), prefix="-nw", doc=InputDocumentation(doc="")), ToolInput(tag="in_outputted", input_type=String(), position=0, doc=InputDocumentation(doc="-nw, --no-warnings     Suppress all warning messages."))], outputs=[ToolOutput(tag="out_force_overwrite", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite", type_hint=File()), doc=OutputDocumentation(doc="Force overwrite of output file(s)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mixcr_Exportclonespretty_V0_1_0().translate("wdl", allow_empty_container=True)

