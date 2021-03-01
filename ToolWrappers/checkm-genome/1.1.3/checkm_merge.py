from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, Directory, Int, String

Checkm_Merge_V0_1_0 = CommandToolBuilder(tool="checkm_merge", base_command=["checkm", "merge"], inputs=[ToolInput(tag="in_genes", input_type=Boolean(optional=True), prefix="--genes", doc=InputDocumentation(doc="bins contain genes as amino acids instead of nucleotide contigs")), ToolInput(tag="in_delta_comp", input_type=Float(optional=True), prefix="--delta_comp", doc=InputDocumentation(doc="minimum increase in completeness to report pair (default: 5.0)")), ToolInput(tag="in_delta_cont", input_type=Float(optional=True), prefix="--delta_cont", doc=InputDocumentation(doc="maximum increase in contamination to report pair (default: 10.0)")), ToolInput(tag="in_merged_comp", input_type=Float(optional=True), prefix="--merged_comp", doc=InputDocumentation(doc="minimum merged completeness to report pair (default: 50.0)")), ToolInput(tag="in_merged_cont", input_type=Float(optional=True), prefix="--merged_cont", doc=InputDocumentation(doc="maximum merged contamination to report pair (default: 20.0)")), ToolInput(tag="in_extension", input_type=Directory(optional=True), prefix="--extension", doc=InputDocumentation(doc="extension of bins (other files in directory are ignored) (default: fna)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads (default: 1)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_marker_file", input_type=String(), position=0, doc=InputDocumentation(doc="marker file to use for assessing potential bin mergers (marker set or HMM file)")), ToolInput(tag="in_bin_dir", input_type=String(), position=1, doc=InputDocumentation(doc="directory containing bins (fasta format)")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="directory to write output files"))], outputs=[], container="quay.io/biocontainers/checkm-genome:1.1.3--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Merge_V0_1_0().translate("wdl")

