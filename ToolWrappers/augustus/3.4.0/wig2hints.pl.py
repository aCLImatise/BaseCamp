from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String, File

Wig2Hints_Pl_V0_1_0 = CommandToolBuilder(tool="wig2hints.pl", base_command=["wig2hints.pl"], inputs=[ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="Default: 40")), ToolInput(tag="in_margin", input_type=Int(optional=True), prefix="--margin", doc=InputDocumentation(doc="Default: 20")), ToolInput(tag="in_min_thresh", input_type=Float(optional=True), prefix="--minthresh", doc=InputDocumentation(doc="Default: 0.4 horizontal cutoff for determining intervals")), ToolInput(tag="in_min_score", input_type=Float(optional=True), prefix="--minscore", doc=InputDocumentation(doc="Default: 0.4 consider only intervals with an average score at least this high")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Default: print this in the third column (default:'CDSpart')")), ToolInput(tag="in_pri", input_type=String(optional=True), prefix="--pri", doc=InputDocumentation(doc="print priority n in last column")), ToolInput(tag="in_radius", input_type=Int(optional=True), prefix="--radius", doc=InputDocumentation(doc="length of hint interval is 2*radius+1")), ToolInput(tag="in_strand", input_type=String(optional=True), prefix="--strand", doc=InputDocumentation(doc="Default: '.' print this in the strand column")), ToolInput(tag="in_prune", input_type=Int(optional=True), prefix="--prune", doc=InputDocumentation(doc="Default: 0 (off). Remove boundary areas that have coverage less than f*100% of the average over the island")), ToolInput(tag="in_src", input_type=String(optional=True), prefix="--src", doc=InputDocumentation(doc="Default: 'X' print src=s in the last column")), ToolInput(tag="in_ucsc", input_type=File(optional=True), prefix="--UCSC", doc=InputDocumentation(doc="Filename for track of UCSC genome browser custom track"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wig2Hints_Pl_V0_1_0().translate("wdl")

