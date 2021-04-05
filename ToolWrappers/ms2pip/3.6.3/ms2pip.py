from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Ms2Pip_V0_1_0 = CommandToolBuilder(tool="ms2pip", base_command=["ms2pip"], inputs=[ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config-file", doc=InputDocumentation(doc="Configuration file: text-based (extensions `.txt`,\n`.config`, or `.ms2pip`) or TOML (extension `.toml`).")), ToolInput(tag="in_spectrum_file", input_type=File(optional=True), prefix="--spectrum-file", doc=InputDocumentation(doc=".mgf MS2 spectrum file (optional)")), ToolInput(tag="in_vector_file", input_type=File(optional=True), prefix="--vector-file", doc=InputDocumentation(doc="write feature vectors to FILE.{pkl,h5} (optional)")), ToolInput(tag="in_retention_time", input_type=Boolean(optional=True), prefix="--retention-time", doc=InputDocumentation(doc="add retention time predictions (requires DeepLC python\npackage)")), ToolInput(tag="in_correlations", input_type=Boolean(optional=True), prefix="--correlations", doc=InputDocumentation(doc="calculate correlations (if MGF is given)")), ToolInput(tag="in_match_spectra", input_type=Boolean(optional=True), prefix="--match-spectra", doc=InputDocumentation(doc="match peptides to spectra based on predicted spectra\n(if MGF is given)")), ToolInput(tag="in_tableau", input_type=Boolean(optional=True), prefix="--tableau", doc=InputDocumentation(doc="create Tableau Reader file")), ToolInput(tag="in_num_cpu", input_type=Int(optional=True), prefix="--num-cpu", doc=InputDocumentation(doc="number of CPUs to use (default: all available)")), ToolInput(tag="in_sql_db_uri", input_type=String(optional=True), prefix="--sqldb-uri", doc=InputDocumentation(doc="use sql database of observed spectra instead of MGF\nfiles\n"))], outputs=[], container="quay.io/biocontainers/ms2pip:3.6.3--py38h4a8c8d9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ms2Pip_V0_1_0().translate("wdl")

