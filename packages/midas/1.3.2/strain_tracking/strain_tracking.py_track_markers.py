from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int

Strain_Tracking_Py_Track_Markers_V0_1_0 = CommandToolBuilder(tool="strain_tracking.py_track_markers", base_command=["strain_tracking.py", "track_markers"], inputs=[ToolInput(tag="in_in_dir", input_type=File(optional=True), prefix="--indir", doc=InputDocumentation(doc="path to input snps directory for one species (contains files 'snps_*.txt')\nrequires having run 'merge_midas.py snps'")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="path to output file with marker sharing between all sample-pairs")), ToolInput(tag="in_markers", input_type=File(optional=True), prefix="--markers", doc=InputDocumentation(doc="path to list of marker alleles output by 'strain_tracking.py id_markers'")), ToolInput(tag="in_min_freq", input_type=Float(optional=True), prefix="--min_freq", doc=InputDocumentation(doc="minimum allele frequency (proportion of reads) per site for SNP calling (0.10)")), ToolInput(tag="in_min_reads", input_type=Int(optional=True), prefix="--min_reads", doc=InputDocumentation(doc="minimum number of reads supporting allele per site for SNP calling (3)")), ToolInput(tag="in_max_sites", input_type=Int(optional=True), prefix="--max_sites", doc=InputDocumentation(doc="maximum number of sites to process (use all)\nuseful for quick tests")), ToolInput(tag="in_max_samples", input_type=Int(optional=True), prefix="--max_samples", doc=InputDocumentation(doc="maximum number of samples to process (use all)\nuseful for quick tests"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="path to output file with marker sharing between all sample-pairs")), ToolOutput(tag="out_markers", output_type=File(optional=True), selector=InputSelector(input_to_select="in_markers", type_hint=File()), doc=OutputDocumentation(doc="path to list of marker alleles output by 'strain_tracking.py id_markers'"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strain_Tracking_Py_Track_Markers_V0_1_0().translate("wdl", allow_empty_container=True)

