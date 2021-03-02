from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Dimspy_Replicate_Filter_V0_1_0 = CommandToolBuilder(tool="dimspy_replicate_filter", base_command=["dimspy", "replicate-filter"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="HDF5 file (Peaklist objects) from step 'process-scans'\nor directory path that contains tab-delimited\npeaklists.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="HDF5 file to save the peaklist objects to.")), ToolInput(tag="in_ppm", input_type=String(optional=True), prefix="--ppm", doc=InputDocumentation(doc="Mass tolerance in Parts per million to group peaks\nacross scans / mass spectra.")), ToolInput(tag="in_replicates", input_type=Int(optional=True), prefix="--replicates", doc=InputDocumentation(doc="Number of technical replicates.")), ToolInput(tag="in_min_peak_present", input_type=Int(optional=True), prefix="--min-peak-present", doc=InputDocumentation(doc="Minimum number of times a peak has to be present\n(number) across technical replicates.")), ToolInput(tag="in_rsd_threshold", input_type=String(optional=True), prefix="--rsd-threshold", doc=InputDocumentation(doc="Maximum threshold - Relative Standard Deviation.")), ToolInput(tag="in_file_list", input_type=File(optional=True), prefix="--filelist", doc=InputDocumentation(doc="Tab-delimited file that list all the data files (*.raw\nor *.mzml) and meta data (filename, technical\nreplicate, class, batch).")), ToolInput(tag="in_report", input_type=String(optional=True), prefix="--report", doc=InputDocumentation(doc="Summary/Report of processed mass spectra")), ToolInput(tag="in_block_size", input_type=Int(optional=True), prefix="--block-size", doc=InputDocumentation(doc="The size of each block of peaks to perform clustering\non.")), ToolInput(tag="in_n_cpus", input_type=Int(optional=True), prefix="--ncpus", doc=InputDocumentation(doc="Number of central processing units (CPUs).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dimspy_Replicate_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

