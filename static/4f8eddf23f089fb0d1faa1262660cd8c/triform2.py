from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int, File

Triform2_V0_1_0 = CommandToolBuilder(tool="triform2", base_command=["triform2"], inputs=[ToolInput(tag="in_treatment", input_type=Array(t=String(), optional=True), prefix="--treatment", doc=InputDocumentation(doc="Treatment (pull-down) file(s) in\nbam/bed/bed.gz/bed.bz2 format.")), ToolInput(tag="in_control", input_type=Array(t=String(), optional=True), prefix="--control", doc=InputDocumentation(doc="Control (input) file(s) in bam/bed/bed.gz/bed.bz2\nformat.")), ToolInput(tag="in_number_cores", input_type=Int(optional=True), prefix="--number-cores", doc=InputDocumentation(doc="Number of cpus to use. Can use at most one per\nchromosome. Default: 1.")), ToolInput(tag="in_genome", input_type=String(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome version to use.")), ToolInput(tag="in_bed_graph", input_type=File(optional=True), prefix="--bedgraph", doc=InputDocumentation(doc="Path to write bedgraph file to, if desired.")), ToolInput(tag="in_max_p", input_type=Int(optional=True), prefix="--max-p", doc=InputDocumentation(doc="Used to calculate minimum upper-tail z-value (default\ncorresponds to standard normal p = 0.1)")), ToolInput(tag="in_min_shift", input_type=Int(optional=True), prefix="--min-shift", doc=InputDocumentation(doc="Minimum inter-strand shift (lag) between peak coverage\ndistributions (default 10 bp).")), ToolInput(tag="in_min_width", input_type=Int(optional=True), prefix="--min-width", doc=InputDocumentation(doc="Minimum number of bp (peak width) in peak-like region\n(default 10 bp).")), ToolInput(tag="in_read_width", input_type=Int(optional=True), prefix="--read-width", doc=InputDocumentation(doc="Read width w, symmetrically extended to a fixed value.\nMust be larger than the flank size. Default: 100 bp.")), ToolInput(tag="in_flank_distance", input_type=Int(optional=True), prefix="--flank-distance", doc=InputDocumentation(doc="Fixed spacing between central and flanking locations\n(must be > w). Default: 150 bp.")), ToolInput(tag="in_min_enrichment", input_type=Int(optional=True), prefix="--min-enrichment", doc=InputDocumentation(doc="Minimum local enrichment ratio (default 3/8 quantile\nof the enrichment ratio)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Triform2_V0_1_0().translate("wdl", allow_empty_container=True)

