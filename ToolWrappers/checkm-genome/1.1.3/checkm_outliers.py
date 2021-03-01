from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory, Boolean

Checkm_Outliers_V0_1_0 = CommandToolBuilder(tool="checkm_outliers", base_command=["checkm", "outliers"], inputs=[ToolInput(tag="in_distributions", input_type=Int(optional=True), prefix="--distributions", doc=InputDocumentation(doc="reference distribution used to identify outliers; integer between 0 and 100 (default: 95)")), ToolInput(tag="in_report_type", input_type=String(optional=True), prefix="--report_type", doc=InputDocumentation(doc="report sequences that are outliers in 'all' or 'any' reference distribution (default: any)")), ToolInput(tag="in_extension", input_type=Directory(optional=True), prefix="--extension", doc=InputDocumentation(doc="extension of bins (other files in directory are ignored) (default: fna)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_results_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory specified during qa command")), ToolInput(tag="in_bin_dir", input_type=String(), position=1, doc=InputDocumentation(doc="directory containing bins (fasta format)")), ToolInput(tag="in_tetra_profile", input_type=String(), position=2, doc=InputDocumentation(doc="tetranucleotide profiles for each sequence (see tetra command)")), ToolInput(tag="in_output_file", input_type=String(), position=3, doc=InputDocumentation(doc="print results to file"))], outputs=[], container="quay.io/biocontainers/checkm-genome:1.1.3--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Outliers_V0_1_0().translate("wdl")

