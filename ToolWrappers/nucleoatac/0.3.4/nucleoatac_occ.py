from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Float

Nucleoatac_Occ_V0_1_0 = CommandToolBuilder(tool="nucleoatac_occ", base_command=["nucleoatac", "occ"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Peaks in bed format")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Sorted (and indexed) BAM file")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="give output basename")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Indexed fasta file")), ToolInput(tag="in_pwm", input_type=Int(optional=True), prefix="--pwm", doc=InputDocumentation(doc="PWM descriptor file. Default is Human.PWM.txt included\nin package")), ToolInput(tag="in_sizes", input_type=File(optional=True), prefix="--sizes", doc=InputDocumentation(doc="File with fragment size distribution. Use if don't\nwant calculation of fragment size")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to use")), ToolInput(tag="in_upper", input_type=Int(optional=True), prefix="--upper", doc=InputDocumentation(doc="upper limit in insert size. default is 251")), ToolInput(tag="in_flank", input_type=Int(optional=True), prefix="--flank", doc=InputDocumentation(doc="Distance on each side of dyad to include for local occ\ncalculation. Default is 60.")), ToolInput(tag="in_min_occ", input_type=Float(optional=True), prefix="--min_occ", doc=InputDocumentation(doc="Occupancy cutoff for determining nucleosome\ndistribution. Default is 0.1")), ToolInput(tag="in_nuc_sep", input_type=Int(optional=True), prefix="--nuc_sep", doc=InputDocumentation(doc="minimum separation between occupany peaks. Default is")), ToolInput(tag="in_step", input_type=Int(optional=True), prefix="--step", doc=InputDocumentation(doc="step size along genome for comuting occ. Default is 5.\nShould be odd, or will be subtracted by 1\n")), ToolInput(tag="in_one_two_zero_dot", input_type=Int(), position=0, doc=InputDocumentation(doc="--confidence_interval float"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nucleoatac_Occ_V0_1_0().translate("wdl", allow_empty_container=True)

