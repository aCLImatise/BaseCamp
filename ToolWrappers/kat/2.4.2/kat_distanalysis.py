from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Kat_Distanalysis_V0_1_0 = CommandToolBuilder(tool="kat_distanalysis", base_command=["kat_distanalysis"], inputs=[ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="If present then plots are sent to files starting with\nthis prefix.")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="If present then plots are generated with this\nextension e.g. {png,svg}.")), ToolInput(tag="in_cns", input_type=Int(optional=True), prefix="--cns", doc=InputDocumentation(doc="The number of copy numbers to consider in the\nanalysis. Only applicable if input is a spectra-cn\nmatrix file.")), ToolInput(tag="in_freq_cut_off", input_type=String(optional=True), prefix="--freq_cutoff", doc=InputDocumentation(doc="The maximum frequency cutoff point to consider.\nAnalysis will be done up to this frequency.")), ToolInput(tag="in_min_elem", input_type=Int(optional=True), prefix="--min_elem", doc=InputDocumentation(doc="Any new distribution that adds less to this number of\ndistinct K-mers will not be added.")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="--plot", doc=InputDocumentation(doc="Plot best cumulative fit for all peaks.")), ToolInput(tag="in_homozygous_peak", input_type=Int(optional=True), prefix="--homozygous_peak", doc=InputDocumentation(doc="The approximate kmer frequency for the homozygous\npeak. Allows us to calculate a more accurate genome\nsize estimate.")), ToolInput(tag="in_haploid", input_type=Boolean(optional=True), prefix="--haploid", doc=InputDocumentation(doc="If selected then we do not try to detect a\nheterozygous peak")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print additional information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kat_Distanalysis_V0_1_0().translate("wdl", allow_empty_container=True)

