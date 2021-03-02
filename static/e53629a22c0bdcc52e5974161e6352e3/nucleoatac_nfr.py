from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float, String

Nucleoatac_Nfr_V0_1_0 = CommandToolBuilder(tool="nucleoatac_nfr", base_command=["nucleoatac", "nfr"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Peaks in bed format")), ToolInput(tag="in_occ_track", input_type=File(optional=True), prefix="--occ_track", doc=InputDocumentation(doc="bgzip compressed, tabix-indexed bedgraph file with\nocccupancy track.")), ToolInput(tag="in_calls", input_type=File(optional=True), prefix="--calls", doc=InputDocumentation(doc="bed file with nucleosome center calls")), ToolInput(tag="in_ins_track", input_type=File(optional=True), prefix="--ins_track", doc=InputDocumentation(doc="bgzip compressed, tabix-indexed bedgraph file with\ninsertion track. will be generated if not included")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Sorted (and indexed) BAM file")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Indexed fasta file")), ToolInput(tag="in_pwm", input_type=Int(optional=True), prefix="--pwm", doc=InputDocumentation(doc="PWM descriptor file. Default is Human.PWM.txt included\nin package")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to use")), ToolInput(tag="in_max_occ", input_type=Float(optional=True), prefix="--max_occ", doc=InputDocumentation(doc="Maximum mean occupancy for NFR. Default is 0.1")), ToolInput(tag="in_max_occ_upper", input_type=Float(optional=True), prefix="--max_occ_upper", doc=InputDocumentation(doc="Maximum for minimum of upper bound occupancy in NFR.\nDefault is 0.25\n")), ToolInput(tag="in_optional", input_type=String(), position=0, doc=InputDocumentation(doc="--out out_basename    output file basename"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nucleoatac_Nfr_V0_1_0().translate("wdl", allow_empty_container=True)

