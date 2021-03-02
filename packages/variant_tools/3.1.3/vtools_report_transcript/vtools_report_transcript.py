from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Vtools_Report_Transcript_V0_1_0 = CommandToolBuilder(tool="vtools_report_transcript", base_command=["vtools_report", "transcript"], inputs=[ToolInput(tag="in_build", input_type=Boolean(optional=True), prefix="--build", doc=InputDocumentation(doc="[BUILD]       Output sequence at specified build of reference\ngenome. The primary reference genome of the project\nwill be used if by default.")), ToolInput(tag="in_strand_only", input_type=Boolean(optional=True), prefix="--strand_only", doc=InputDocumentation(doc="Only output strand of genes that covers the region.")), ToolInput(tag="in_first_transcript", input_type=Boolean(optional=True), prefix="--first_transcript", doc=InputDocumentation(doc="If set, only display the first transcript of RNA or\nProtein sequence")), ToolInput(tag="in_zero_based", input_type=Boolean(optional=True), prefix="--zero_based", doc=InputDocumentation(doc="If set, user input is zero based and will be\ntranslated to 1-based coordinates before query. The\noutput is always 1-based")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Output error and warning (0), info (1), debug (2) and\ntrace (3) information to standard output (default to\n1).\n")), ToolInput(tag="in_regions", input_type=String(), position=0, doc=InputDocumentation(doc="'One or more chromosome regions in the format of\nchr:start-end (e.g. chr21:33,031,597-33,041,570),\nField:Value from a region-based annotation database\n(e.g. refGene.name2:TRIM2 or\nrefGene_exon.name:NM_000947), or set options of\nseveral regions (&, |, -, and ^ for intersection,\nunion, difference, and symmetric difference)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Report_Transcript_V0_1_0().translate("wdl", allow_empty_container=True)

