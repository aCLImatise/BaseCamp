from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Filtergenemark_Pl_V0_1_0 = CommandToolBuilder(tool="filterGenemark.pl", base_command=["filterGenemark.pl"], inputs=[ToolInput(tag="in_introns", input_type=File(optional=True), prefix="--introns", doc=InputDocumentation(doc="Corresponding intron file in gff format")), ToolInput(tag="in_genemark", input_type=File(optional=True), prefix="--genemark", doc=InputDocumentation(doc="File in gtf format")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Specifies output file name. Default is 'genemark-input_file_name.c.gtf'\nand 'genemark-input_file_name.f.good.gtf'\nand 'genemark-input_file_name.f.bad.gtf' for filtered genes included and not included\nin intron file respectively")), ToolInput(tag="in_suppress", input_type=File(optional=True), prefix="--suppress", doc=InputDocumentation(doc="Suppress file output")), ToolInput(tag="in_filter_out_short", input_type=Boolean(optional=True), prefix="--filterOutShort", doc=InputDocumentation(doc="Filters intron containing genes as 'bad' that have an RNA-Seq supported intron\nwithin 2*maximal CDS length of the gene with at least 20% of average intron\nmultiplicity for that gene (screens also downstream of stop, which either indicates\nwrong reading frame, or a downstream UTR)")), ToolInput(tag="in_genemark_dot_gtf", input_type=String(), position=0, doc=InputDocumentation(doc="file in gtf format")), ToolInput(tag="in_introns_dot_gff", input_type=String(), position=1, doc=InputDocumentation(doc="corresponding introns file in gff format"))], outputs=[ToolOutput(tag="out_suppress", output_type=File(optional=True), selector=InputSelector(input_to_select="in_suppress", type_hint=File()), doc=OutputDocumentation(doc="Suppress file output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtergenemark_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

