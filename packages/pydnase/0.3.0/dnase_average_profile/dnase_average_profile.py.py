from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Dnase_Average_Profile_Py_V0_1_0 = CommandToolBuilder(tool="dnase_average_profile.py", base_command=["dnase_average_profile.py"], inputs=[ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--window_size", doc=InputDocumentation(doc="Size of flanking area around centre of the regions to\nplot (default: 100)")), ToolInput(tag="in_bias_file", input_type=File(optional=True), prefix="--bias-file", doc=InputDocumentation(doc="Location of the sorted, index")), ToolInput(tag="in_ignores_strand_information", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Ignores any strand information in BED file and plots\ndata relative to reference strand")), ToolInput(tag="in_combine_strand_information", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Combine the strand information into one graph")), ToolInput(tag="in_normalise_cut_counts", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Normalise cut counts to a fraction peaks")), ToolInput(tag="in_normalise_cutting_bias", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Normalise for cutting bias")), ToolInput(tag="in_atacseq_mode", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="ATAC-seq mode")), ToolInput(tag="in_regions", input_type=String(), position=0, doc=InputDocumentation(doc="BED file of the regions you want to generate the\naverage profile for")), ToolInput(tag="in_reads", input_type=String(), position=1, doc=InputDocumentation(doc="The BAM file containing the DNase-seq data")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="filename to write the output to"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnase_Average_Profile_Py_V0_1_0().translate("wdl", allow_empty_container=True)

