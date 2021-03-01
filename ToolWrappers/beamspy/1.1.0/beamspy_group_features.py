from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Beamspy_Group_Features_V0_1_0 = CommandToolBuilder(tool="beamspy_group_features", base_command=["beamspy", "group-features"], inputs=[ToolInput(tag="in_peak_list", input_type=String(optional=True), prefix="--peaklist", doc=InputDocumentation(doc="Tab-delimited peaklist.")), ToolInput(tag="in_intensity_matrix", input_type=String(optional=True), prefix="--intensity-matrix", doc=InputDocumentation(doc="Tab-delimited intensity matrix.")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Sqlite database to write results.")), ToolInput(tag="in_max_rt_diff", input_type=Int(optional=True), prefix="--max-rt-diff", doc=InputDocumentation(doc="Maximum difference in retention time between two\npeaks.")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="Method to apply for grouping features.")), ToolInput(tag="in_coeff_threshold", input_type=String(optional=True), prefix="--coeff-threshold", doc=InputDocumentation(doc="Threshold for correlation coefficient.")), ToolInput(tag="in_p_value_threshold", input_type=String(optional=True), prefix="--pvalue-threshold", doc=InputDocumentation(doc="Threshold for p-value.")), ToolInput(tag="in_gml_file", input_type=File(optional=True), prefix="--gml-file", doc=InputDocumentation(doc="Write graph to GraphML format.")), ToolInput(tag="in_n_cpus", input_type=Int(optional=True), prefix="--ncpus", doc=InputDocumentation(doc="Number of central processing units (CPUs).\n"))], outputs=[], container="quay.io/biocontainers/beamspy:1.1.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Beamspy_Group_Features_V0_1_0().translate("wdl")

