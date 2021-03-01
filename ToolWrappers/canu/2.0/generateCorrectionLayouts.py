from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Generatecorrectionlayouts_V0_1_0 = CommandToolBuilder(tool="generateCorrectionLayouts", base_command=["generateCorrectionLayouts"], inputs=[ToolInput(tag="in_mandatory_path_seqstore", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="mandatory path to seqStore")), ToolInput(tag="in_mandatory_path_ovlstore", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="mandatory path to ovlStore")), ToolInput(tag="in_scores", input_type=String(optional=True), prefix="-scores", doc=InputDocumentation(doc="overlap score thresholds (from filterCorrectionOverlaps)\nif not supplied, will be estimated from ovlStore")), ToolInput(tag="in_output_layouts_store", input_type=String(optional=True), prefix="-C", doc=InputDocumentation(doc="output layouts to store 'corStore'")), ToolInput(tag="in_write_verbose_logging", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="write extremely verbose logging to 'corStore.log'")), ToolInput(tag="in_dump_data_used", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="dump the data used to estimate overlap scores to 'corStore.scores'")), ToolInput(tag="in_process_reads_starting", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="process reads starting at bgnID")), ToolInput(tag="in_process_reads_including", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="process reads up to but not including endID")), ToolInput(tag="in_el", input_type=Int(optional=True), prefix="-eL", doc=InputDocumentation(doc="minimum length of evidence overlaps")), ToolInput(tag="in_ee", input_type=String(optional=True), prefix="-eE", doc=InputDocumentation(doc="maximum error rate of evidence overlaps")), ToolInput(tag="in_ec", input_type=String(optional=True), prefix="-eC", doc=InputDocumentation(doc="maximum coverage of evidence reads to emit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generatecorrectionlayouts_V0_1_0().translate("wdl", allow_empty_container=True)

