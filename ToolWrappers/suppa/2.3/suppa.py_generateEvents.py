from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Suppa_Py_Generateevents_V0_1_0 = CommandToolBuilder(tool="suppa.py_generateEvents", base_command=["suppa.py", "generateEvents"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="specify input file")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="specify output path and name without extension")), ToolInput(tag="in_list_events_analyze", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="[{SE,SS,MX,RI,FL} ...], --event-type {SE,SS,MX,RI,FL} [{SE,SS,MX,RI,FL} ...]\nlist of events to analyze. (space separated) Options:\nSE -- Skipping Exon SS -- Alternative Splice Site\n(5'/3') MX -- Mutually Exclusive Exon RI -- Retained\nIntron FL -- Alternative First/Last Exon")), ToolInput(tag="in_boundary", input_type=String(optional=True), prefix="--boundary", doc=InputDocumentation(doc="Boundary type.Options: S -- Strict (Default) V --\nVariable")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Variability treshold. In case of strict boundaries\nthis argument is ignored(Default: 10nt).")), ToolInput(tag="in_pool_genes", input_type=Boolean(optional=True), prefix="--pool-genes", doc=InputDocumentation(doc="pool together overlapping genes.")), ToolInput(tag="in_exon_length", input_type=Int(optional=True), prefix="--exon-length", doc=InputDocumentation(doc="length of the exons for its visualization. (Default:\n100nt)")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="to choose from DEBUG, INFO, WARNING, ERROR and")), ToolInput(tag="in_critical", input_type=String(), position=0, doc=InputDocumentation(doc="-f {ioe,ioi}, --format {ioe,ioi}"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="specify output path and name without extension"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Suppa_Py_Generateevents_V0_1_0().translate("wdl", allow_empty_container=True)

