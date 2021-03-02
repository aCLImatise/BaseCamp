from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Slopbed_V0_1_0 = CommandToolBuilder(tool="slopBed", base_command=["slopBed"], inputs=[ToolInput(tag="in_increase_bedgffvcf_entry", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Increase the BED/GFF/VCF entry -b base pairs in each direction.\n- (Integer) or (Float, e.g. 0.1) if used with -pct.")), ToolInput(tag="in_number_base_subtract", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="The number of base pairs to subtract from the start coordinate.\n- (Integer) or (Float, e.g. 0.1) if used with -pct.")), ToolInput(tag="in_number_add_add", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="The number of base pairs to add to the end coordinate.\n- (Integer) or (Float, e.g. 0.1) if used with -pct.")), ToolInput(tag="in_define_l_r_based", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Define -l and -r based on strand.\nE.g. if used, -l 500 for a negative-stranded feature,\nit will add 500 bp downstream.  Default = false.")), ToolInput(tag="in_pct", input_type=Boolean(optional=True), prefix="-pct", doc=InputDocumentation(doc="Define -l and -r as a fraction of the feature's length.\nE.g. if used on a 1000bp feature, -l 0.50,\nwill add 500 bp 'upstream'.  Default = false.")), ToolInput(tag="in_header", input_type=File(optional=True), prefix="-header", doc=InputDocumentation(doc="the header from the input file prior to results.")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_slop", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slopbed_V0_1_0().translate("wdl")

