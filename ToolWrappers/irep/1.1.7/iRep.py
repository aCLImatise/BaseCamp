from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Irep_V0_1_0 = CommandToolBuilder(tool="iRep", base_command=["iRep"], inputs=[ToolInput(tag="in__fastas", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[F [F ...]]      fasta(s)")), ToolInput(tag="in_sorted_sam_files", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[S [S ...]]      sorted sam file(s) for each sample (e.g.: bowtie2")), ToolInput(tag="in_prefix_output_plots", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="prefix for output files (table and plots)")), ToolInput(tag="in_pickle", input_type=Boolean(optional=True), prefix="--pickle", doc=InputDocumentation(doc="save pickle file (optional)")), ToolInput(tag="in_mm", input_type=Int(optional=True), prefix="-mm", doc=InputDocumentation(doc="max. # of read mismatches allowed (default: 1)")), ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="--sort", doc=InputDocumentation(doc="optional - sort the sam file")), ToolInput(tag="in_max_memory_gb", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="max. memory (GB) for sorting sam (default: 100)")), ToolInput(tag="in_no_plot", input_type=Boolean(optional=True), prefix="--no-plot", doc=InputDocumentation(doc="do not plot output")), ToolInput(tag="in_no_gc_correction", input_type=Boolean(optional=True), prefix="--no-gc-correction", doc=InputDocumentation(doc="do not correct coverage for GC bias before calculating")), ToolInput(tag="in_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="threads (default: 6)")), ToolInput(tag="in_i_rep", input_type=String(), position=0, doc=InputDocumentation(doc="-ff                 overwrite files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Irep_V0_1_0().translate("wdl", allow_empty_container=True)

