from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, String

Trainglimmerhmm_V0_1_0 = CommandToolBuilder(tool="trainGlimmerHMM", base_command=["trainGlimmerHMM"], inputs=[ToolInput(tag="in_i_considered_eg", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc=",i2,...,in\nisochores to be considered (e.g. if two isochores are desired between\n0-40% GC content and 40-100% then the option should be: -i 0,40,100;\ndefault is -i 0,100 )")), ToolInput(tag="in_name_name_training", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="name = name of training directory")), ToolInput(tag="in_val_average_value_upstream", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="val = average value of upstream UTR region if known")), ToolInput(tag="in_val_average_value_downstream", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="val = average value of downstream UTR region if known")), ToolInput(tag="in_val_average_value_intergenic", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="val = average value of intergenic region if known")), ToolInput(tag="in_val_value_flanking", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="val = value of flanking region around genes (default=200)")), ToolInput(tag="in_val_build_st", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="val = build 1st or 2nd order markov model (default=1)")), ToolInput(tag="in_val_when_constructing", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="val = 1 when constructing decision trees from false.* files (default=0)")), ToolInput(tag="in_agtcgtcgctagctagctagcatc_gag_tcttttcgatcgaggactagactt", input_type=String(), position=0, doc=InputDocumentation(doc="CTAGCTAGCTAGCATAGCATACGAGCATATCGGTCATGAGACTGATTGGGC")), ToolInput(tag="in_tttagctagctagcatagcatacg_agca_tatcggtagactgattgggttta", input_type=String(), position=0, doc=InputDocumentation(doc="TGCGTTA"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trainglimmerhmm_V0_1_0().translate("wdl", allow_empty_container=True)

