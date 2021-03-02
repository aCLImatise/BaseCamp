from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Frc_V0_1_0 = CommandToolBuilder(tool="FRC", base_command=["FRC"], inputs=[ToolInput(tag="in_pe_sam", input_type=File(optional=True), prefix="--pe-sam", doc=InputDocumentation(doc="paired end alignment file (in sam or bam format).\nOrientation must be -> <-")), ToolInput(tag="in_pe_max_insert", input_type=Int(optional=True), prefix="--pe-max-insert", doc=InputDocumentation(doc="maximum allowed insert size for PE (to filter out\noutleyers)")), ToolInput(tag="in_mp_sam", input_type=File(optional=True), prefix="--mp-sam", doc=InputDocumentation(doc="mate pairs alignment file. (in sam or bam format).\nOrientation must be <- ->")), ToolInput(tag="in_mp_max_insert", input_type=Int(optional=True), prefix="--mp-max-insert", doc=InputDocumentation(doc="maximum allowed insert size for MP (to filter out\noutleyers)")), ToolInput(tag="in_genome_size", input_type=Int(optional=True), prefix="--genome-size", doc=InputDocumentation(doc="estimated genome size (if not supplied genome size is\nbelieved to be assembly length")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Header output file names (default FRC.txt and\nFeatures.txt)")), ToolInput(tag="in_ce_stats_pe_min", input_type=Int(optional=True), prefix="--CEstats-PE-min", doc=InputDocumentation(doc="minimum allowed CE_stats in PE library")), ToolInput(tag="in_ce_stats_pe_max", input_type=Int(optional=True), prefix="--CEstats-PE-max", doc=InputDocumentation(doc="maximum allowed CE_stats in PE library")), ToolInput(tag="in_ce_stats_mp_min", input_type=Int(optional=True), prefix="--CEstats-MP-min", doc=InputDocumentation(doc="minimum allowed CE_stats in MP library")), ToolInput(tag="in_ce_stats_mp_max", input_type=Int(optional=True), prefix="--CEstats-MP-max", doc=InputDocumentation(doc="maximum allowed CE_stats in MP library"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Header output file names (default FRC.txt and\nFeatures.txt)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Frc_V0_1_0().translate("wdl", allow_empty_container=True)

