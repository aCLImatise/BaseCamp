from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int

Strain_Tracking_Py_Id_Markers_V0_1_0 = CommandToolBuilder(tool="strain_tracking.py_id_markers", base_command=["strain_tracking.py", "id_markers"], inputs=[ToolInput(tag="in_in_dir", input_type=File(optional=True), prefix="--indir", doc=InputDocumentation(doc="path to input snps directory for one species (contains files 'snps_*.txt')\nrequires having run 'merge_midas.py snps'")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="path to output file containing list of markers")), ToolInput(tag="in_samples", input_type=File(optional=True), prefix="--samples", doc=InputDocumentation(doc="comma-separated list of training samples\nby default, all samples are used")), ToolInput(tag="in_min_freq", input_type=Float(optional=True), prefix="--min_freq", doc=InputDocumentation(doc="minimum allele frequency (proportion of reads) per site for SNP calling (0.10)")), ToolInput(tag="in_min_reads", input_type=Int(optional=True), prefix="--min_reads", doc=InputDocumentation(doc="minimum number of reads supporting allele per site for SNP calling (3)")), ToolInput(tag="in_allele_prev", input_type=Int(optional=True), prefix="--allele_prev", doc=InputDocumentation(doc="maximum occurences of allele across samples (1)\nsetting this to 1 (default) will pick alleles found in exactly 1 sample")), ToolInput(tag="in_max_sites", input_type=Int(optional=True), prefix="--max_sites", doc=InputDocumentation(doc="maximum number of genomic sites to process (use all)\nuseful for quick tests"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="path to output file containing list of markers"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strain_Tracking_Py_Id_Markers_V0_1_0().translate("wdl", allow_empty_container=True)

