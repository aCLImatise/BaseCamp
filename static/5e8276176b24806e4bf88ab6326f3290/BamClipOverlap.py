from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bamclipoverlap_V0_1_0 = CommandToolBuilder(tool="BamClipOverlap", base_command=["BamClipOverlap"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input bam file. Needs to be sorted by name.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output bam file.")), ToolInput(tag="in_overlap_mismatch_mapq", input_type=Boolean(optional=True), prefix="-overlap_mismatch_mapq", doc=InputDocumentation(doc="Set mapping quality of pair to 0 if mismatch is found in overlapping reads.\nDefault value: 'false'")), ToolInput(tag="in_overlap_mismatch_remove", input_type=Boolean(optional=True), prefix="-overlap_mismatch_remove", doc=InputDocumentation(doc="Remove pair if mismatch is found in overlapping reads.\nDefault value: 'false'")), ToolInput(tag="in_overlap_mismatch_base_q", input_type=Boolean(optional=True), prefix="-overlap_mismatch_baseq", doc=InputDocumentation(doc="Reduce base quality if mismatch is found in overlapping reads.\nDefault value: 'false'")), ToolInput(tag="in_overlap_mismatch_base_n", input_type=Boolean(optional=True), prefix="-overlap_mismatch_basen", doc=InputDocumentation(doc="Set base to N if mismatch is found in overlapping reads.\nDefault value: 'false'")), ToolInput(tag="in_ignore_indels", input_type=Boolean(optional=True), prefix="-ignore_indels", doc=InputDocumentation(doc="Turn off indel detection in overlap.\nDefault value: 'false'")), ToolInput(tag="in_verbose_modedefault_value", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose mode.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output bam file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamclipoverlap_V0_1_0().translate("wdl", allow_empty_container=True)

