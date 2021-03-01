from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Float, Int, Boolean, String

Checkm_Ssu_Finder_V0_1_0 = CommandToolBuilder(tool="checkm_ssu_finder", base_command=["checkm", "ssu_finder"], inputs=[ToolInput(tag="in_extension", input_type=Directory(optional=True), prefix="--extension", doc=InputDocumentation(doc="extension of bins (other files in directory are ignored) (default: fna)")), ToolInput(tag="in_evalue", input_type=Float(optional=True), prefix="--evalue", doc=InputDocumentation(doc="e-value threshold for identifying hits (default: 1e-05)")), ToolInput(tag="in_concatenate", input_type=Int(optional=True), prefix="--concatenate", doc=InputDocumentation(doc="concatenate hits that are within the specified number of base pairs (default: 200)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads (default: 1)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc="sequences used to generate bins (fasta format)")), ToolInput(tag="in_bin_dir", input_type=String(), position=1, doc=InputDocumentation(doc="directory containing bins (fasta format)")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="directory to write output files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Ssu_Finder_V0_1_0().translate("wdl", allow_empty_container=True)

